accessing
spawnWindow
    | windowId label win |
    windowId := editor topez nextAvailableWindowId.
    editor topez currentWindowId: windowId.
    label := editor labelString.
    (win := editor topez editorWindowAt: windowId) model
        activateCodeEditor;
        contents: self sourceElement;
        label: label;
        windowId: windowId.
    win extent: editor topez listExtent