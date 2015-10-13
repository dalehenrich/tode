system menu
todeWorldMenuOn: aBuilder
	<worldMenu>
	(aBuilder item: #'tODE World Menu')
		order: 0.1;
		target: self;
		icon: (Smalltalk ui icons toolsIcon);
		action: [ self resetWorldMenu ];
		withSeparatorAfter

