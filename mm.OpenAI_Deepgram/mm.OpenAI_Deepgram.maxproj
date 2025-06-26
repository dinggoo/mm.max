{
	"name" : "OpenAI_Deepgram",
	"version" : 1,
	"creationdate" : 3783430710,
	"modificationdate" : 3783430813,
	"viewrect" : [ 25.0, 106.0, 300.0, 500.0 ],
	"autoorganize" : 1,
	"hideprojectwindow" : 0,
	"showdependencies" : 1,
	"autolocalize" : 0,
	"contents" : 	{
		"patchers" : 		{
			"mainChat.maxpat" : 			{
				"kind" : "patcher",
				"local" : 1,
				"toplevel" : 1
			}
,
			"n4m.monitor.maxpat" : 			{
				"kind" : "patcher"
			}

		}
,
		"code" : 		{
			"fit_jweb_to_bounds.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"max2Deepgram.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"maxtoGTP.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}
,
			"resize_n4m_monitor_patcher.js" : 			{
				"kind" : "javascript",
				"local" : 1
			}

		}
,
		"externals" : 		{
			"shell.mxo" : 			{
				"kind" : "object",
				"local" : 1
			}

		}

	}
,
	"layout" : 	{

	}
,
	"searchpath" : 	{

	}
,
	"detailsvisible" : 0,
	"amxdtype" : 0,
	"readonly" : 0,
	"devpathtype" : 0,
	"devpath" : ".",
	"sortmode" : 0,
	"viewmode" : 0,
	"includepackages" : 0
}
