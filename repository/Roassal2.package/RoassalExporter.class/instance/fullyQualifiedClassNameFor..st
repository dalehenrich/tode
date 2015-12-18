export
fullyQualifiedClassNameFor: aClass

	^ (self includesClass: aClass)
		ifTrue: [self environment, '.', aClass name]
		ifFalse: [ | pkg |
			pkg := self packageFor: aClass.
			pkg ifNil: [ aClass visualworksName]
			ifNotNil: [ pkg namespace, '.', aClass name ]
			].