{
	"version": "0.2.0",
	"configurations": [
		{
			"name": "Flash",
			"type": "fdb",
			"request": "launch",
			"program": "${workspaceRoot}/export/flash/bin/${APPLICATION_FILE}.swf",
			"preLaunchTask": "debug: flash"
		}
	]
}
