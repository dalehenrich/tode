accesing
packages
	^ packagesInfo ifNil: [ packagesInfo := OrderedCollection new.
		
		packages do: [ :asso | | pkg |
			pkg := RPackageOrganizer default packageNamed: asso key.
			asso value do: [ :tag | 
				packagesInfo add: (pkg classTagNamed: tag) ]
			 ].
		packagesInfo ].