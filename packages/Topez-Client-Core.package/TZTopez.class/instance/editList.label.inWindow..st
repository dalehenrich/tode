editting
editList: aCollectionOfObjects label: labelString inWindow: windowIdOrNil
    | windowId label newWindow win |
    windowId := windowIdOrNil ifNil: [ windowId := self currentWindowId ].
    windowId == 0
        ifTrue: [ windowId := self nextAvailableWindowId ].
    self currentWindowId: windowId.
    label := windowId asString , ': ' , labelString.
    newWindow := (self status windowAt: windowId) isNil.
    (win := self editorWindowAt: windowId) model
        activateListEditor;
        list: aCollectionOfObjects;
        label: label;
        windowId: windowId.
    newWindow
        ifTrue: [ win extent: self listExtent ].
    ^ ''