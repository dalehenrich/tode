as yet unclassified
createMethodSectionMapFor: configurationClass version: versionString
  | version constructor project methodSections methodSectionMap attributeList |
  project := configurationClass project.
  version := project version: versionString.
  methodSections := OrderedCollection new.
  {version}
    , (version importedVersions collect: [ :each | project version: each ])
    do: [ :version | 
      constructor := MetacelloToolBoxConstructor new.
      constructor configuration: configurationClass new.
      constructor extractMethodSectionsFor: version versionString.
      methodSections addAll: constructor methodSections ].
  methodSectionMap := Dictionary new.
  attributeList := self orderedAttributeList.
  methodSections
    do: [ :methodSection | 
      | coll |
      coll := methodSectionMap
        at: methodSection attributePath
        ifAbsent: [ methodSectionMap at: methodSection attributePath put: OrderedCollection new ].
      coll add: methodSection.
      methodSection attributes
        do: [ :attribute | 
          (attributeList includes: attribute)
            ifFalse: [ self error: 'missing attribute: ' , attribute asString ] ] ].
  ^ methodSectionMap