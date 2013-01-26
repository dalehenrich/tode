accessing
builderFor: anObject aspect: anAspect do: aBlock
  self
    builderClassFor: anObject
    aspect: anAspect
    do: [ :className :finalAspect | 
      | builderClass |
      builderClass := Smalltalk classNamed: className asSymbol.
      aBlock
        value:
          (builderClass new
            object: anObject;
            yourself)
        value: finalAspect ]