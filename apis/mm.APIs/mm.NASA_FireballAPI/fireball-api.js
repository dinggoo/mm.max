/**
 * NASA Fireball API Script for Max/MSP
 * Requires: max-api module
 * 
 * Messages to send:
 *   latest [n]              - Get latest n fireballs (default: 10)
 *   date <YYYY-MM-DD>       - Get fireballs since date
 *   range <start> <end>     - Get fireballs between dates
 *   energy <min>            - Get fireballs with energy >= min (x10^10 joules)
 *   impact <min>            - Get fireballs with impact energy >= min (kt)
 *   location [n]            - Get fireballs with known location
 *   velocity [n]            - Get fireballs with velocity data
 */

const https = require('https');
const Max = require('max-api');

// Configuration
const BASE_URL = 'https://ssd-api.jpl.nasa.gov/fireball.api';

// Helper function to make HTTPS requests
function fetchAPI(url) {
  return new Promise((resolve, reject) => {
    https.get(url, (res) => {
      let data = '';
      
      res.on('data', (chunk) => {
        data += chunk;
      });
      
      res.on('end', () => {
        try {
          const json = JSON.parse(data);
          resolve(json);
        } catch (e) {
          reject(new Error('Failed to parse JSON: ' + e.message));
        }
      });
    }).on('error', (err) => {
      reject(err);
    });
  });
}

// Parse and output fireball data via Max outlets
function outputFireballs(data) {
  if (!data || data.count === 0) {
    Max.outlet('count', 0);
    Max.outlet('bang');
    return;
  }

  // Output count first
  Max.outlet('count', data.count);

  // Get field indices
  const fields = data.fields;
  const dateIdx = fields.indexOf('date');
  const latIdx = fields.indexOf('lat');
  const latDirIdx = fields.indexOf('lat-dir');
  const lonIdx = fields.indexOf('lon');
  const lonDirIdx = fields.indexOf('lon-dir');
  const altIdx = fields.indexOf('alt');
  const energyIdx = fields.indexOf('energy');
  const impactIdx = fields.indexOf('impact-e');
  const vxIdx = fields.indexOf('vx');
  const vyIdx = fields.indexOf('vy');
  const vzIdx = fields.indexOf('vz');

  // Build dictionary object
  const dictData = {
    count: data.count
  };

  // Output each fireball
  data.data.forEach((record, index) => {
    // Start fireball record
    Max.outlet('fireball', index);
    
    // Build dictionary entry for this fireball
    const fireballKey = `fireball_${index}`;
    dictData[fireballKey] = {};
    
    // Date (always present)
    if (dateIdx >= 0 && record[dateIdx]) {
      Max.outlet('date', record[dateIdx]);
      dictData[fireballKey].date = record[dateIdx];
    }
    
    // Location (if available)
    if (latIdx >= 0 && record[latIdx] !== null) {
      const lat = parseFloat(record[latIdx]);
      const latDir = record[latDirIdx] || 'N';
      const lon = parseFloat(record[lonIdx]);
      const lonDir = record[lonDirIdx] || 'E';
      
      // Output as signed decimal degrees
      const latSigned = latDir === 'S' ? -lat : lat;
      const lonSigned = lonDir === 'W' ? -lon : lon;
      
      Max.outlet('latitude', latSigned);
      Max.outlet('longitude', lonSigned);
      Max.outlet('location', latSigned, lonSigned);
      
      // Add to dictionary
      dictData[fireballKey].latitude = latSigned;
      dictData[fireballKey].longitude = lonSigned;
    }
    
    // Altitude (if available)
    if (altIdx >= 0 && record[altIdx] !== null) {
      const altitude = parseFloat(record[altIdx]);
      Max.outlet('altitude', altitude);
      dictData[fireballKey].altitude = altitude;
    }
    
    // Energy (always present)
    if (energyIdx >= 0 && record[energyIdx]) {
      const energy = parseFloat(record[energyIdx]);
      Max.outlet('energy', energy);
      // Also output in joules for easier processing
      Max.outlet('energy_joules', energy * 1e10);
      
      // Add to dictionary
      dictData[fireballKey].energy = energy;
      dictData[fireballKey].energy_joules = energy * 1e10;
    }
    
    // Impact energy (always present)
    if (impactIdx >= 0 && record[impactIdx]) {
      const impactEnergy = parseFloat(record[impactIdx]);
      Max.outlet('impact_energy', impactEnergy);
      dictData[fireballKey].impact_energy = impactEnergy;
    }
    
    // Velocity components (if requested)
    if (vxIdx >= 0 && record[vxIdx] !== null) {
      const vx = parseFloat(record[vxIdx]);
      const vy = parseFloat(record[vyIdx]);
      const vz = parseFloat(record[vzIdx]);
      
      Max.outlet('velocity_x', vx);
      Max.outlet('velocity_y', vy);
      Max.outlet('velocity_z', vz);
      
      // Calculate total velocity magnitude
      const velocity = Math.sqrt(vx*vx + vy*vy + vz*vz);
      Max.outlet('velocity_total', velocity);
      
      // Add to dictionary
      dictData[fireballKey].velocity_x = vx;
      dictData[fireballKey].velocity_y = vy;
      dictData[fireballKey].velocity_z = vz;
      dictData[fireballKey].velocity_total = velocity;
    }
    
    // End of fireball record
    Max.outlet('---');
  });
  
  // Set the dictionary with all data at once
  Max.setDict('fireballDict', dictData);
  
  // Signal completion
  Max.outlet('bang');
}

// Build API URL based on command and arguments
function buildAPIUrl(command, args) {
  const params = [];
  
  switch (command.toLowerCase()) {
    case 'latest':
      const limit = args[0] ? parseInt(args[0]) : 10;
      params.push(`limit=${limit}`);
      params.push('sort=-date');
      break;
      
    case 'date':
      if (!args[0]) {
        throw new Error('Date required. Usage: date YYYY-MM-DD');
      }
      params.push(`date-min=${args[0]}`);
      params.push('sort=-date');
      break;
      
    case 'range':
      if (!args[0] || !args[1]) {
        throw new Error('Start and end dates required. Usage: range YYYY-MM-DD YYYY-MM-DD');
      }
      params.push(`date-min=${args[0]}`);
      params.push(`date-max=${args[1]}`);
      params.push('sort=-date');
      break;
      
    case 'energy':
      if (!args[0]) {
        throw new Error('Minimum energy required. Usage: energy <min>');
      }
      params.push(`energy-min=${args[0]}`);
      params.push('sort=-energy');
      break;
      
    case 'impact':
      if (!args[0]) {
        throw new Error('Minimum impact energy required. Usage: impact <min>');
      }
      params.push(`impact-e-min=${args[0]}`);
      params.push('sort=-impact-e');
      break;
      
    case 'location':
      params.push('req-loc=true');
      const locLimit = args[0] ? parseInt(args[0]) : 20;
      params.push(`limit=${locLimit}`);
      params.push('sort=-date');
      break;
      
    case 'velocity':
      params.push('vel-comp=true');
      const velLimit = args[0] ? parseInt(args[0]) : 10;
      params.push(`limit=${velLimit}`);
      params.push('sort=-date');
      break;
      
    default:
      throw new Error(`Unknown command: ${command}`);
  }
  
  const queryString = params.length > 0 ? '?' + params.join('&') : '';
  return BASE_URL + queryString;
}

// Handler for 'latest' command
Max.addHandler('latest', async (...args) => {
  try {
    const url = buildAPIUrl('latest', args);
    const data = await fetchAPI(url);
    outputFireballs(data);
  } catch (error) {
    Max.post('ERROR:', error.message);
  }
});

// Handler for 'date' command
Max.addHandler('date', async (...args) => {
  try {
    const url = buildAPIUrl('date', args);
    const data = await fetchAPI(url);
    outputFireballs(data);
  } catch (error) {
    Max.post('ERROR:', error.message);
  }
});

// Handler for 'range' command
Max.addHandler('range', async (...args) => {
  try {
    const url = buildAPIUrl('range', args);
    const data = await fetchAPI(url);
    outputFireballs(data);
  } catch (error) {
    Max.post('ERROR:', error.message);
  }
});

// Handler for 'energy' command
Max.addHandler('energy', async (...args) => {
  try {
    const url = buildAPIUrl('energy', args);
    const data = await fetchAPI(url);
    outputFireballs(data);
  } catch (error) {
    Max.post('ERROR:', error.message);
  }
});

// Handler for 'impact' command
Max.addHandler('impact', async (...args) => {
  try {
    const url = buildAPIUrl('impact', args);
    const data = await fetchAPI(url);
    outputFireballs(data);
  } catch (error) {
    Max.post('ERROR:', error.message);
  }
});

// Handler for 'location' command
Max.addHandler('location', async (...args) => {
  try {
    const url = buildAPIUrl('location', args);
    const data = await fetchAPI(url);
    outputFireballs(data);
  } catch (error) {
    Max.post('ERROR:', error.message);
  }
});

// Handler for 'velocity' command
Max.addHandler('velocity', async (...args) => {
  try {
    const url = buildAPIUrl('velocity', args);
    const data = await fetchAPI(url);
    outputFireballs(data);
  } catch (error) {
    Max.post('ERROR:', error.message);
  }
});

// Handler for 'bang' - returns latest 10
Max.addHandler('bang', async () => {
  try {
    const url = buildAPIUrl('latest', [10]);
    const data = await fetchAPI(url);
    outputFireballs(data);
  } catch (error) {
    Max.post('ERROR:', error.message);
  }
});

// Handler for generic message with command as first argument
// Allows: "latest 5" or ["latest", 5] format
Max.addHandler(Max.MESSAGE_TYPES.ALL, async (handled, ...args) => {
  // Skip if already handled by a specific handler
  if (handled) return;
  
  // If first arg is a known command, process it
  if (args.length > 0) {
    const command = String(args[0]).toLowerCase();
    const validCommands = ['latest', 'date', 'range', 'energy', 'impact', 'location', 'velocity'];
    
    if (validCommands.includes(command)) {
      try {
        const url = buildAPIUrl(command, args.slice(1));
        const data = await fetchAPI(url);
        outputFireballs(data);
      } catch (error) {
        Max.post('ERROR:', error.message);
      }
    }
  }
});
