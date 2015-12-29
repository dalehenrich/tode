as yet unclassified
onServerName: atODEShell
	| target |
	target := self wrappedObject.
	^ (atODEShell onServerDo: [ (Object _objectForOop: (target)) class name, ' ', target printString])