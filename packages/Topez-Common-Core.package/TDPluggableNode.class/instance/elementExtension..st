as yet unclassified
elementExtension: elementName
    self elementExtensionBlock ifNil: [ ^ super extension ].
    ^ self elementExtensionBlock value: self value: elementName