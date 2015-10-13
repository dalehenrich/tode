system menu
todeSessionMenuOn: aBuilder
	<todeWorldMenu>
	false ifTrue: [ (aBuilder item: #'Logout')
		order: 1.21;
		target: self;
		icon: Smalltalk ui icons smallQuitIcon;
		enabled: currentShell notNil;
		action: [ 
					currentShell ifNil: [ ^ self ].
					currentShell logout ]].
	(aBuilder item: #'Exit Shell')
		order: 1.22;
		target: self;
		icon: Smalltalk ui icons smallQuitIcon;
		enabled: currentShell notNil;
		action: [ 
					currentShell ifNil: [ ^ self ].
					currentShell exit ];
		withSeparatorAfter.
	(aBuilder item: #Windows)
		order: 1.2;
		target: self;
		enabled: currentShell notNil;
		icon: Smalltalk ui icons smallWindowIcon.
	(aBuilder item: #'Close all session windows')
		parent: #Windows;
		order: 1.0;
		target: self;
		action: [ 
					currentShell ifNil: [ ^ self ].
					currentShell close ].
	(aBuilder item: #'Find a session window')
		parent: #Windows;
		order: 2.0;
		target: self;
		action: [ 
					currentShell ifNil: [ ^ self ].
					currentShell console controlShiftLKeyStroke ];
		withSeparatorAfter.
