as yet unclassified
mrpackageNamesIn: repo
  | packageNames loadedVersions resolvedReferences |
  loadedVersions := self loadedVersions: true.
  resolvedReferences := self resolvedReferencesForRepository: repo.
  packageNames := resolvedReferences keys asArray
    sorted: [ :a :b | 
      | aLoaded bLoaded |
      aLoaded := bLoaded := true.
      loadedVersions at: a ifAbsent: [ aLoaded := false ].
      loadedVersions at: b ifAbsent: [ bLoaded := false ].
      aLoaded & bLoaded
        ifTrue: [ a < b ]
        ifFalse: [ 
          aLoaded
            ifTrue: [ true ]
            ifFalse: [ 
              bLoaded
                ifTrue: [ false ]
                ifFalse: [ a < b ] ] ] ].
  ^ {packageNames.
  loadedVersions.
  resolvedReferences}