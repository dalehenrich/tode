system menu
todeDefineTodeHelpMenuItemOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Help')
		parent: #tODE;
		order: 20.0;
		icon: (Smalltalk ui icons helpIcon);
		action: [self new help];
		withSeparatorAfter