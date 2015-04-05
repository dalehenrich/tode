system menu
todeDefineDevKitRootMenuItemOn: aBuilder
	<todeWorldMenu>
	(aBuilder item: #'Define Dev Kit Root')
		parent: #Client;
		order: 2.26;
		action: [ 
					| path |
					path := UIManager default request: 'Enter gsDevKit path' initialAnswer: self devKitRoot.
					path isEmptyOrNil
						ifFalse: [ self devKitRoot: path ] ];
					withSeparatorAfter