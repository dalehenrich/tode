system menu
pharoWorldMenuOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Pharo World Menu')
		order: 90;
		target: self;
		icon: ((Smalltalk ui icons pharoIcon) scaledToSize: 16@16);
		action: [ self restorePharoWorldMenu ];
		withSeparatorAfter