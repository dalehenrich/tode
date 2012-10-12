editting
editCode: aStringOrText inClass: classProxy label: labelString inWindow: windowIdOrNil at: windowLocation
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
                (TZDoItElement new
                        proxyClass: classProxy;
                        proxyClassName: classProxy className;
                        source: aStringOrText;
                        yourself);
        windowId: windowId;
        label: label.
    newWindow
        ifTrue: [ 
            | bounds |
            bounds := self bounds at: windowLocation.
            win
                extent: bounds extent;
                position: bounds origin ].
    ^ ''