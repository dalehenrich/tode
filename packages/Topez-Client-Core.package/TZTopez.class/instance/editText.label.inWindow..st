editting
editText: aStringOrText label: labelString inWindow: windowIdOrNil
    | windowId label newWindow win |
    windowId := windowIdOrNil ifNil: [ windowId := self nextAvailableWindowId ].
    windowId == 0
        ifTrue: [ windowId := self nextAvailableWindowId ].
    self currentWindowId: windowId.
    label := labelString.
    newWindow := (self status windowAt: windowId) isNil.
    (win := self editorWindowAt: windowId) model
        activateCodeEditor;
        contents:
                (TZTextElement new
                        source: aStringOrText;
                        yourself);
        windowId: windowId;
        label: label.
    newWindow
        ifTrue: [ win extent: self codeExtent ].
    ^ ''