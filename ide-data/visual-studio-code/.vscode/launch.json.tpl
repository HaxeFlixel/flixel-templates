{
	"version": "0.2.0",
	"configurations": [
		{
			"name": "flash build + launch",
			"type": "fdb",
			"request": "launch",
			"program": "${workspaceRoot}/export/flash/bin/${APPLICATION_FILE}.swf",
			"preLaunchTask": "flash debug (build only)"
		},
		{
			"name": "flash launch",
			"type": "fdb",
			"request": "launch",
			"program": "${workspaceRoot}/export/flash/bin/${APPLICATION_FILE}.swf"
		}
	]
}