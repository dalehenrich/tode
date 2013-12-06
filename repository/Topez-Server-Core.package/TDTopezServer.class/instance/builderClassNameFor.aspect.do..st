accessing
builderClassNameFor: anObject aspect: anAspect do: aBlock
  self
    lookupClassNameFor: anObject class
    aspect: anAspect
    defaultAspect: #'view'
    in: self class nodeBuilders
    do: [ :className | 
      ^ className == nil
        ifTrue: [ aBlock value: 'TDObjectNodeBuilder' value: anAspect ]
        ifFalse: [ aBlock value: className value: anAspect ] ]