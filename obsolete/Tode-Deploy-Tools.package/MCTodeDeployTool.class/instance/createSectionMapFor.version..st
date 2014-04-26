as yet unclassified
createSectionMapFor: configurationClass version: versionString
  | methodSectionMap attributeList versions |
  methodSectionMap := self
    createMethodSectionMapFor: configurationClass
    version: versionString.
  attributeList := self orderedAttributeList.
  versions := Dictionary new.
  attributeList
    do: [ :attribute | 
      | sections |
      sections := methodSectionMap
        at: attribute asMetacelloAttributePath
        ifAbsent: [ #() ].
      sections
        do: [ :methodSection | 
          | versionSpec |
          versionSpec := methodSection versionSpec.
          versionSpec packages
            specListDo: [ :packageSpec | 
              | file |
              "use respondsTo: because #getFile should be implemented in MetacelloAbstractPackageSpec"
              ((packageSpec respondsTo: #'getFile')
                and: [ (file := packageSpec getFile) notNil ])
                ifTrue: [ 
                  | ref refs |
                  ref := GoferVersionReference name: file.
                  ref versionNumber > 0
                    ifTrue: [ 
                      refs := versions at: attribute ifAbsent: [ versions at: attribute put: Set new ].
                      refs add: ref ] ] ] ] ].
  ^ versions