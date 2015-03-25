system menu
pharoWorldMenuOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Pharo World Menu')
		parent: #Pharo;
		order: 2;
		target: self;
		icon: (Smalltalk ui icons pharoIcon scaledToSize: 16 @ 16);
		action: [ self restorePharoWorldMenu ]