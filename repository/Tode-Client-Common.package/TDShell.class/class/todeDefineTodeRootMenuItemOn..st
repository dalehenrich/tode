system menu
todeDefineTodeRootMenuItemOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Define tODE Root')
		parent: #System;
		order: 10.1;
		action: [ 
					| path |
					path := UIManager default request: 'Enter tODE root path' initialAnswer: self todeRoot.
					path isEmptyOrNil
						ifFalse: [ self todeRoot: path ] ]