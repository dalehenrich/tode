accessing
builderClassNameFor: anObject aspect: anAspect do: aBlock
  self
    lookupClassNameFor: anObject
    aspect: anAspect
    in: self class nodeBuilders
    do: [ :className :finalAspect | 
      ^ className == nil
        ifTrue: [ aBlock value: 'TDObjectNodeBuilder' value: finalAspect ]
        ifFalse: [ aBlock value: className value: finalAspect ] ]