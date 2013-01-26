accessing
editElement: parentObject for: anObject aspect: anAspect windowName: windowName windowId: windowId
  | element |
  self
    editorNodeFor: anObject
    aspect: anAspect
    do: [ :windowBuilder :finalAspect | 
      element := windowBuilder
        buildClientElement: parentObject
        topez: self
        aspect: finalAspect
        windowName: windowName
        windowId: windowId ].
  ^ self editElement: element