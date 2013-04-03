settings
buildTopezEditorSettingsOn: aBuilder
    (aBuilder shortcut: #'selectWindow')
        category: #'TopezEditor';
        shortcutName: #'selectWindow';
        label: 'Select Window' translated;
        description: 'pop up list of topez windows ... select the window to be activated'.
    (aBuilder shortcut: #'spawnWindow')
        category: #'TopezEditor';
        shortcutName: #'spawnWindow';
        label: 'Spawn Window' translated;
        description: 'open a new copy of the selected window'