as yet unclassified
editorWindowAt: windowId
    | editorWindow |
    (editorWindow := self windowStatus windowAt: windowId)
        ifNil: [ 
            editorWindow := TopezEditor new
                topez: self;
                open.
            self windowStatus windowAt: windowId put: editorWindow ].
    ^ editorWindow