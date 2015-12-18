as yet unclassified
name
 	^ ((self wrappedObject isKindOf: WorkspaceVariable) ifTrue: [ self wrappedObject name ] ifFalse: [ self wrappedObject class name asString]).
