instance creation
windowOrigin: aPoint listWindowWidth: lwWidth codeWindowHeight: cwHeight codeWindowWidth: cwWidth shellWindowHeight: shHeight debuggerWindowWidth: dwWidth
	^ self new
		windowOrigin: aPoint;
		listWindowWidth: lwWidth;
		codeWindowHeight: cwHeight;
		codeWindowWidth: cwWidth;
		shellWindowHeight: shHeight;
		debuggerWindowWidth: dwWidth;
		yourself