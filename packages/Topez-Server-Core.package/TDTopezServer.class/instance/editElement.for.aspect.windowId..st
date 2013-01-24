accessing
editElement: parentObject for: anObject aspect: anAspect windowId: windowId
  | element |
  element := (self editorNodeFor: anObject aspect: anAspect)
    buildClientElement: parentObject
    topez: self
    aspect: anAspect
    windowId: windowId.
  ^ self editElement: element