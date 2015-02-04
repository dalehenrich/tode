system menu
todeDefineTodeRootMenuItemOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Define tODE Root')
		parent: #tODE;
		order: 10.1;
		action: [ 
					| path |
					path := UIManager default request: 'Enter tODE root path' initialAnswer: self todeRoot.
					path isEmptyOrNil
						ifFalse: [ self todeRoot: path ] ]