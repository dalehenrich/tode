accessing
editorNodeClassFor: anObject aspect: anAspect do: aBlock
  self
    lookupClassNameFor: anObject
    aspect: anAspect
    in: self class nodeEditors
    do: [ :className :finalAspect | 
      ^ className == nil
        ifTrue: [ aBlock value: 'TDClientObjectElementBuilder' value: finalAspect ]
        ifFalse: [ aBlock value: className value: finalAspect ] ]