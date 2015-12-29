as yet unclassified
inspectOnServer: atODEShell
	| target |
	target := self wrappedObject.
	atODEShell
		onServerDo: [ 
			(Object _objectForOop: target) inspect.
			nil ]