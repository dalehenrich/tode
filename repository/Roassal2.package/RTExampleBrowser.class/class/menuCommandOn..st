menu
menuCommandOn: aBuilder
	<worldMenu>
	((aBuilder item: #Roassal) icon: RTIcon smallRoassal)
	withSeparatorAfter;
	with: [
		(aBuilder item: #'Roassal Examples')
			order: 0.1; 
			parent: #Roassal;
			label: 'Roassal examples';
			icon: RTIcon smallRoassal;
			action: [ self new open ] ]