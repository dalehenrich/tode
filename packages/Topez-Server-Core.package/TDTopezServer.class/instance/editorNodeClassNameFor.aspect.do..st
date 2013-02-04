accessing
editorNodeClassNameFor: anObject aspect: anAspect do: aBlock
  self
    lookupClassNameFor: anObject
    aspect: anAspect
    in: self class nodeEditors
    do: [ :className | 
      ^ className == nil
        ifTrue: [ aBlock value: 'TDClientObjectElementBuilder' value: anAspect ]
        ifFalse: [ aBlock value: className value: anAspect ] ]