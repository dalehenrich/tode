editting
editCode: aStringOrText inClass: classProxy label: labelString inWindow: windowIdOrNil
    | windowId label newWindow win |
    windowId := windowIdOrNil ifNil: [ windowId := self nextAvailableWindowId ].
    windowId == 0
        ifTrue: [ windowId := self nextAvailableWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    newWindow := (self status windowAt: windowId) isNil.
    (win := self editorWindowAt: windowId) model
        activateCodeEditor;
        contents:
                (TZDoItElement new
                        proxyClass: classProxy;
                        proxyClassName: classProxy className;
                        source: aStringOrText;
                        yourself);
        label: label;
        windowId: windowId.
    newWindow
        ifTrue: [ win extent: self codeExtent ].
    ^ ''