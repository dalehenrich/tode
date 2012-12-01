as yet unclassified
extension
    self extensionBlock ifNil: [ ^ super extension ].
    ^ self extensionBlock value: self