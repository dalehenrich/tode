accessing
builderFor: anObject aspect: anAspect do: aBlock
  self
    builderClassNameFor: anObject
    aspect: anAspect
    do: [ :className :finalAspect | | builderClass |
      builderClass := self globalNamed: className.
      aBlock value: (builderClass new
            object: anObject;
            yourself) value: finalAspect ]