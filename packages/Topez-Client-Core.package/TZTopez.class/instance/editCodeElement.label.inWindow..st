editting
editCodeElement: aTZElement label: labelString inWindow: windowIdOrNil
    | windowId label newWindow win |
    windowId := windowIdOrNil ifNil: [ windowId := self nextAvailableWindowId ].
    windowId == 0
        ifTrue: [ windowId := self nextAvailableWindowId ].
    self currentWindowId: windowId.
    label := labelString , ': ' , aTZElement renderLabel asString.
    newWindow := (self status windowAt: windowId) isNil.
    (win := self editorWindowAt: windowId) model
        activateCodeEditor;
        contents: aTZElement;
        windowId: windowId;
        label: label.
    newWindow
        ifTrue: [ win extent: self codeExtent ].
    ^ ''