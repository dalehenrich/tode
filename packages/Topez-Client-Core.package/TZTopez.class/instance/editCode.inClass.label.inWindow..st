editting
editCode: aStringOrText inClass: classProxy label: labelString inWindow: windowIdOrNil
    | windowId label |
    windowId := windowIdOrNil ifNil: [ windowId := self currentWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    (self windowAt: windowId) model
        activateCodeEditor;
        classOrMetaClass: classProxy asBehavior;
        contents: aStringOrText;
        label: label;
        windowId: windowId.
    ^ ''