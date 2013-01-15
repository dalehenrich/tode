accessing
builderClassFor: anObject aspect: anAspect
  ^ self
    nodeClassFor: anObject
    aspect: anAspect
    in: self class nodeBuilders
    ifAbsent: 'TDObjectNodeBuilder'