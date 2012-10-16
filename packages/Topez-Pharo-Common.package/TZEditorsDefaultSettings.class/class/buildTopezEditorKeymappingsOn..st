settings
buildTopezEditorKeymappingsOn: aBuilder
    <keymap>
    (aBuilder shortcut: #'redo')
        category: #'TopezEditor'
        default: $j command
        do: [ :morph | morph textMorph editor redo ].
    (aBuilder shortcut: #'selectWindow')
        category: #'TopezEditor'
        default: $x command shift
        do: [ :morph | morph model controlShiftXKeyStroke ].
    (aBuilder shortcut: #'spawnWindow')
        category: #'TopezEditor'
        default: $c command shift
        do: [ :morph | morph model controlShiftCKeyStroke ]