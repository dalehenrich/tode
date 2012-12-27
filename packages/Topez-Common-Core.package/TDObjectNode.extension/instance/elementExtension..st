*topez-common-core
elementExtension: elementName
    self elementExtensionBlock ifNil: [ ^ self extension ].
    ^ self elementExtensionBlock value: self value: elementName