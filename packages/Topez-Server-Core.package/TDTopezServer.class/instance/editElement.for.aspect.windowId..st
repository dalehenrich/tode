accessing
editElement: parentNode for: anObject aspect: anAspect windowId: windowId
  | element |
  element := (self editorNodeFor: anObject aspect: anAspect)
    buildClientElement: parentNode
    topez: self
    aspect: anAspect
    windowId: windowId.
  ^ self editElement: element