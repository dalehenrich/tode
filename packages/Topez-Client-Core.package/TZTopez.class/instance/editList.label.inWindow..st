editting
editList: aCollectionOfStringsOrText label: labelString inWindow: windowIdOrNil
    | windowId label |
    windowId := windowIdOrNil ifNil: [ windowId := self currentWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    (self windowAt: windowId) model
        activateListEditor;
        list: (aCollectionOfStringsOrText collect: [ :each | each proxyPrintString ]);
        label: label;
        windowId: windowId.
    ^ ''