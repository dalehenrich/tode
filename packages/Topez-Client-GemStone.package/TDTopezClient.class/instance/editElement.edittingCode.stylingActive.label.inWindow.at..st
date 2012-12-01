as yet unclassified
editElement: aTZElement edittingCode: edittingCode stylingActive: styleingActive label: labelString inWindow: windowIdOrNil at: windowLocation
    | windowId label newWindow win |
    windowId := windowIdOrNil ifNil: [ windowId := self nextAvailableWindowId ].
    windowId == 0
        ifTrue: [ windowId := self nextAvailableWindowId ].
    self currentWindowId: windowId.
    label := labelString.
    newWindow := (self windowStatus windowAt: windowId) isNil.
    (win := self editorWindowAt: windowId) model
        edittingCode: edittingCode;
        stylingActive: styleingActive;
        activateCodeEditor;
        contents: aTZElement;
        windowId: windowId;
        label: label.
    newWindow
        ifTrue: [ 
            | bounds |
            bounds := self bounds at: windowLocation.
            win
                extent: bounds extent;
                position: bounds origin ].
    ^ win model