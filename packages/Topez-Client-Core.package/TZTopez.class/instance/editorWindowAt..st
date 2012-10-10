editting
editorWindowAt: windowId
    | editorWindow |
    (editorWindow := self status windowAt: windowId)
        ifNil: [ 
            editorWindow := TopezEditor new
                topez: self;
                open.
            self status windowAt: windowId put: editorWindow ].
    ^ editorWindow