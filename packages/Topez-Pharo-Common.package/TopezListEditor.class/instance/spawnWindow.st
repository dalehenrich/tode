accessing
spawnWindow
    | windowId label win |
    windowId := editor topez nextAvailableWindowId.
    editor topez currentWindowId: windowId.
    label := editor labelString.
    (win := editor topez editorWindowAt: windowId) model
        activateListEditor;
        list: self list;
        label: label;
        windowId: windowId.
    win extent: editor topez listExtent