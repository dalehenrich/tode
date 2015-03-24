system menu
todeOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Open Tool')
		order: 1.05;
		target: self;
		icon: Smalltalk ui icons toolsIcon;
		enabled: currentShell isNil.
	(aBuilder item: #Tools)
		order: 1.1;
		target: self;
		enabled: currentShell notNil;
		icon: Smalltalk ui icons toolsIcon.
	(aBuilder item: #Client)
		order: 2.0;
		target: self;
		icon: Smalltalk ui icons toolsIcon.
	(aBuilder item: #System)
		parent: #Client;
		order: 1.0;
		target: self;
		icon: Smalltalk ui icons configurationIcon;
		withSeparatorAfter.
	(aBuilder item: #'Save Image')
		parent: #System;
		order: 3.0;
		icon: Smalltalk ui icons smallSaveIcon;
		action: [ Smalltalk saveSession ];
		withSeparatorAfter.
	(aBuilder item: #Settings)
		parent: #System;
		order: 1;
		icon: Smalltalk ui icons smallConfigurationIcon;
		action: [ SettingBrowser open ].
	(aBuilder item: #Transcript)
		order: 19.0;
		icon: Smalltalk ui icons transcriptIcon;
		action: [ 
					| bounds |
					bounds := TDTopezGemStoneClient windowProperties caculateWindowBounds at: #transcript.
					Smalltalk tools transcript open
						extent: bounds extent;
						position: bounds origin ].
	(aBuilder item: #'Exit tODE Client')
		order: 100;
		target: self;
		icon: Smalltalk ui icons smallQuitIcon;
		action: [ Smalltalk snapshot: false andQuit: true ]