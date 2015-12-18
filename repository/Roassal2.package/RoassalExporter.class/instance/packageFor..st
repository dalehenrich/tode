accesing
packageFor: aClass
	self namespaces do: [ :name | | pkg |
		pkg := RPackageOrganizer default packageNamed: name.
		(pkg includesClass: aClass) ifTrue: [ ^ pkg ] ].
	^ nil.