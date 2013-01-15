accessing
editNode: parentNode for: anObject aspect: anAspect windowId: windowId
  ^ (self editorNodeFor: anObject aspect: anAspect)
    editNode: parentNode
    topez: self
    aspect: anAspect
    windowId: windowId