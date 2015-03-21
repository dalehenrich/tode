system menu
todeDefineDevKitRootMenuItemOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Define Dev Kit Root')
		parent: #System;
		order: 10.1;
		action: [ 
					| path |
					path := UIManager default request: 'Enter gsDevKit path' initialAnswer: self devKitRoot.
					path isEmptyOrNil
						ifFalse: [ self devKitRoot: path ] ]