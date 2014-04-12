system menu
todeDefineTodeHomeMenuItemOn: aBuilder
	<worldMenu>
	(aBuilder item: #'define tODE Home')
		parent: #tODE;
		order: 10.0;
		action: [ 
					| path |
					path := UIManager request: 'Enter todeHome path' initialAnswer: self todeHome.
					path isEmptyOrNil
						ifFalse: [ self todeHome: path ] ].
