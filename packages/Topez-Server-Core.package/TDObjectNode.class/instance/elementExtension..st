as yet unclassified
elementExtension: elementName
    self elementExtensionBlock ifNil: [ ^ self extension ].
    ^ self elementExtensionBlock value: self value: elementName