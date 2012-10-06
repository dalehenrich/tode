editting
editList: aCollectionOfStringsOrText label: labelString inWindow: windowIdOrNil
    | windowId label |
    windowId := windowIdOrNil ifNil: [ windowId := self currentWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    (self status windowAt: windowId)
        ifNotNil: [ :window | 
            window isCodeEditor
                ifTrue: [ ^ 'select a list editor' ].
            window
                list: aCollectionOfStringsOrText;
                label: label ]
        ifNil: [ 
            | window |
            window := TopezListEditor openList: aCollectionOfStringsOrText label: label.
            window windowId: windowId.
            self status windowAt: windowId put: window ].
    ^ ''