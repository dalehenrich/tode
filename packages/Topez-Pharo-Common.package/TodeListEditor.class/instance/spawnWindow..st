accessing
spawnWindow: aClientElement
  | windowId label win |
  windowId := editor topez nextAvailableWindowId.
  editor topez currentWindowId: windowId.
  label := editor label.
  (win := editor topez editorWindowAt: windowId) model
    activateListEditor;
    clientElement: aClientElement;
    windowId: windowId;
    label: label.
  win extent: self editor topView extent