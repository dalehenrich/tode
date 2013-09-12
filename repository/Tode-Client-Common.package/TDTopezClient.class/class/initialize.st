class initialization
initialize
  "self initialize"

  "default:
	TDTopezClient
  		windowOrigin: 26@0.5;
  		listWindowWidth: 24;
  		codeWindowWidth: 77;
  		initialize."

  "foos:
	TDTopezClient
  		windowOrigin: 25@0.5;
  		listWindowWidth: 26;
  		codeWindowWidth: 78;
  		initialize."

  "mac:
	TDTopezClient
  		windowOrigin: 27@0.5;
  		listWindowWidth: 26;
  		codeWindowWidth: 68;
  		initialize."

  self initializeBounds.
  self initializeSessionMap