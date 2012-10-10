editting
editCode: aStringOrText inClass: classProxy label: labelString inWindow: windowIdOrNil
    | windowId label |
    windowId := windowIdOrNil ifNil: [ windowId := self currentWindowId ].
    windowId == 0
        ifTrue: [ windowId := self nextAvailableWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    (self editorWindowAt: windowId) model
        activateCodeEditor;
        contents:
                (TZDoItElement new
                        proxyClass: classProxy;
                        proxyClassName: classProxy className;
                        source: aStringOrText;
                        yourself);
        label: label;
        windowId: windowId.
    ^ ''