{
	"version": "0.2.0",
	"configurations": [
		{
			"name": "Flash",
			"type": "fdb",
			"request": "launch",
			"program": "${workspaceRoot}/export/flash/bin/${APPLICATION_FILE}.swf",
			"preLaunchTask": "debug: flash"
		},
		{
			"name": "HTML5",
			"type": "chrome",
			"request": "launch",
			"url": "http://127.0.0.1:3000",
			"sourceMaps": true,
			"webRoot": "${workspaceFolder}"
		},
		{
			"name": "Windows",
			"type": "hxcpp",
			"request": "launch",
			"program": "${workspaceRoot}/export/windows/bin/${APPLICATION_FILE}.exe"
		},
		{
			"name": "Linux",
			"type": "hxcpp",
			"request": "launch",
			"program": "${workspaceRoot}/export/linux64/bin/${APPLICATION_FILE}"
		},
		{
			"name": "Mac",
			"type": "hxcpp",
			"request": "launch",
			"program": "${workspaceRoot}/export/mac64/bin/${APPLICATION_FILE}.app/Contents/MacOS/${APPLICATION_FILE}"
		}
	]
}
