accessing
editElement: parentObject for: anObject aspect: anAspect selectionIndex: aSelectionIndex windowName: windowName windowId: windowId windowLocation: windowLocation
  | element |
  self
    editorNodeFor: anObject
    aspect: anAspect
    do: [ :windowBuilder :finalAspect | 
      element := windowBuilder
        buildClientElement: parentObject
        topez: self
        aspect: finalAspect
        selectionIndex: aSelectionIndex
        windowName: windowName
        windowId: windowId
        windowLocation: windowLocation ].
  ^ self editElement: element