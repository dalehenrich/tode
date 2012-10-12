editting
editList: aCollectionOfObjects label: labelString inWindow: windowIdOrNil
    | windowId label newWindow win |
    windowId := windowIdOrNil ifNil: [ windowId := self nextAvailableWindowId ].
    windowId == 0
        ifTrue: [ windowId := self nextAvailableWindowId ].
    self currentWindowId: windowId.
    label := labelString.
    newWindow := (self status windowAt: windowId) isNil.
    (win := self editorWindowAt: windowId) model
        activateListEditor;
        list: aCollectionOfObjects;
        windowId: windowId;
        label: label.
    newWindow
        ifTrue: [ win extent: self listExtent ].
    ^ ''