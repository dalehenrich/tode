accessing
spawnWindow: aClientElement
  | windowId label win |
  windowId := aClientElement editorWindowName == nil
    ifTrue: [ editor topez nextAvailableWindowId ]
    ifFalse: [ aClientElement topez windowIdNamed: aClientElement editorWindowName ].
  editor topez currentWindowId: windowId.
  label := editor label.
  (win := editor topez editorWindowAt: windowId) model
    activateListEditor;
    clientElement: aClientElement;
    windowId: windowId;
    label: label.
  win extent: self editor topView extent