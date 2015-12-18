svg
addStart: bounds
	self 
		addVersion;
		addMarginsAndGlobals: bounds;
		addCanvasSize: bounds;
		addCanvasColor;
		addXLinkVersion;
		addScript;
		selfAddHelperElements;
		addButtons;
		addCode.