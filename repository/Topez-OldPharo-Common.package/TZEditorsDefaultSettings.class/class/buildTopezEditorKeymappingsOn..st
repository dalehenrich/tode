settings
buildTopezEditorKeymappingsOn: aBuilder
    <keymap>
    (aBuilder shortcut: #'selectWindow')
        category: #'TopezEditor'
        default: $l command shift
        do: [ :morph | morph model controlShiftLKeyStroke ].
    (aBuilder shortcut: #'spawnWindow')
        category: #'TopezEditor'
        default: $c command shift
        do: [ :morph | morph model controlShiftCKeyStroke ]