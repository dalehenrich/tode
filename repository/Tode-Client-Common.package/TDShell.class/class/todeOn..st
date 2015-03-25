system menu
todeOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Open Tool')
		order: 1.05;
		target: self;
		icon: Smalltalk ui icons toolsIcon;
		enabled: currentShell isNil;
		withSeparatorAfter.
	(aBuilder item: #Tools)
		order: 1.1;
		target: self;
		enabled: currentShell notNil;
		icon: Smalltalk ui icons toolsIcon.
	(aBuilder item: #Client)
		order: 2.0;
		target: self;
		icon: Smalltalk ui icons toolsIcon.
	(aBuilder item: #DevKit)
		order: 2.1;
		target: self;
		icon: Smalltalk ui icons homeIcon.
	(aBuilder item: #Pharo)
		order: 2.2;
		target: self;
		icon: (Smalltalk ui icons pharoIcon scaledToSize: 16 @ 16);
		withSeparatorAfter.
	(aBuilder item: #'Update tODE Client')
		parent: #Client;
		order: 2.2;
		target: self;
		icon: Smalltalk ui icons smallUpdateIcon;
		action: [ 
					| shell |
					shell := self openSessionDescription: TDSessionDescription seaside evaluate: 'updateClient'.
					shell exit ];
		withSeparatorAfter.
	(aBuilder item: #'Save Image')
		parent: #Client;
		order: 3.0;
		icon: Smalltalk ui icons smallSaveIcon;
		action: [ Smalltalk saveSession ].
	(aBuilder item: #'Save Image')
		parent: #Pharo;
		order: 0.5;
		icon: Smalltalk ui icons smallSaveIcon;
		action: [ Smalltalk saveSession ];
		withSeparatorAfter.
	(aBuilder item: #Settings)
		parent: #Pharo;
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