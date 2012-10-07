editting
editList: aCollectionOfStringsOrText label: labelString inWindow: windowIdOrNil
    | windowId label |
    windowId := windowIdOrNil ifNil: [ windowId := self currentWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    (self windowAt: windowId) model
        activateListEditor;
        list: aCollectionOfStringsOrText;
        label: label;
        windowId: windowId.
    ^ ''