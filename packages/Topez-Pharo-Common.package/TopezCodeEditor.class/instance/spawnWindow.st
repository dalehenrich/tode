accessing
spawnWindow
    | windowId label win |
    windowId := editor topez nextAvailableWindowId.
    editor topez currentWindowId: windowId.
    label := editor label.
    (win := editor topez editorWindowAt: windowId) model
        activateCodeEditor;
        contents: self sourceElement;
        windowId: windowId;
        label: label.
    win extent: editor topez codeExtent