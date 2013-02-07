as yet unclassified
buildClientElement: parentObject topez: aTopez aspect: anAspect selectionIndex: aSelectionIndex windowName: inWindowName windowId: inWindowId windowLocation: windowLocation
  ^ (super
    buildClientElement: parentObject
    topez: aTopez
    aspect: anAspect
    selectionIndex: aSelectionIndex
    windowName: inWindowName
    windowId: inWindowId
    windowLocation: windowLocation)
    messagePattern: self object messagePattern;
    messagePatternIsRegex: self object messagePatternIsRegex;
    yourself