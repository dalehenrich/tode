public
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Reset camera')
			order: 0.1; 
			parent: #Roassal;
			label: 'Reset camera';
			icon: RTIcon smallRoassal;
			action: [ TRCameraInitializer reset ]