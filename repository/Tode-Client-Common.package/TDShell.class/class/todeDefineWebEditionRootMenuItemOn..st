system menu
todeDefineWebEditionRootMenuItemOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Define Web Edition Root')
		parent: #tODE;
		order: 10.0;
		action: [ 
					| path |
					path := UIManager default request: 'Enter webEditionRoot path' initialAnswer: self webEditionRoot.
					path isEmptyOrNil
						ifFalse: [ self webEditionRoot: path ] ]