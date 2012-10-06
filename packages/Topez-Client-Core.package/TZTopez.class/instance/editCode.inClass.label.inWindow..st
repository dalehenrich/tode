editting
editCode: aStringOrText inClass: classProxy label: labelString inWindow: windowIdOrNil
    | windowId label |
    windowId := windowIdOrNil ifNil: [ windowId := self currentWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    (self status windowAt: windowId)
        ifNotNil: [ :window | 
            window
                classOrMetaClass: classProxy asBehavior;
                contents: aStringOrText;
                label: label ]
        ifNil: [ 
            | window |
            window := TopezCodeEditor openContents: aStringOrText inClass: classProxy asBehavior label: label.
            window windowId: windowId.
            self status windowAt: windowId put: window ]