as yet unclassified
createMethodSectionMapFor: configurationClass version: versionString
  ^ self
    createMethodSectionMapFor: configurationClass
    attributeList: self orderedAttributeList
    version: versionString