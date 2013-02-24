accessing
builderFor: anObject aspect: anAspect do: aBlock
  self
    builderClassNameFor: anObject
    aspect: anAspect
    do: [ :className :finalAspect | 
      | builderClass |
      builderClass := TDTopezServer todeSymbolList
        objectNamed: className asSymbol.
      aBlock
        value:
          (builderClass new
            object: anObject;
            yourself)
        value: finalAspect ]