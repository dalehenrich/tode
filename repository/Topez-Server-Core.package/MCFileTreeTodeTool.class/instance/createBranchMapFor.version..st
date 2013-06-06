as yet unclassified
createBranchMapFor: configurationClass version: versionString
  | methodSectionMap attributeList branches |
  methodSectionMap := self
    createMethodSectionMapFor: configurationClass
    version: versionString.
  attributeList := self orderedAttributeList.
  branches := Dictionary new.
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
                  ref branch notEmpty
                    ifTrue: [ 
                      refs := branches
                        at: ref branch
                        ifAbsent: [ branches at: ref branch put: Set new ].
                      refs add: ref ] ] ] ] ].
  ^ branches