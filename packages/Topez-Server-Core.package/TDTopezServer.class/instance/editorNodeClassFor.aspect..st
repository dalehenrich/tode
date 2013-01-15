accessing
editorNodeClassFor: anObject aspect: anAspect
  ^ self
    nodeClassFor: anObject
    aspect: anAspect
    in: self class nodeEditors
    ifAbsent: 'TDClientListElementBuilder'