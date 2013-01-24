accessing
editElement: parentObject for: anObject aspect: anAspect windowName: windowName windowId: windowId
  | element |
  element := (self editorNodeFor: anObject aspect: anAspect)
    buildClientElement: parentObject
    topez: self
    aspect: anAspect
    windowName: windowName
    windowId: windowId.
  ^ self editElement: element