home
todeRoot
	| root |
	root := DevKitRoot ifNil: [ self webEditionRoot ] ifNotNil: [ self devKitRoot ].
	^ root , self todePath