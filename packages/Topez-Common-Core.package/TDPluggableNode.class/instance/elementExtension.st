as yet unclassified
elementExtension
    self elementExtensionBlock ifNil: [ ^ super extension ].
    ^ self elementExtensionBlock value: self