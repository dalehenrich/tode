as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect parent obj itemAttribute windowName highlightIndex parentList |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parent := itemAttribute parent.
  aspect := itemAttribute aspect.
  parentList := itemAttribute listIndex copy.
  index == 1
    ifTrue: [ 
      | objName |
      "."
      "toggle between view and inspect on subject of list"
      aspect := aspect == #'inspect'
        ifTrue: [ #'view' ]
        ifFalse: [ #'inspect' ].
      obj := obj dotSelfObject
        asTDObjectNode: obj
        topez: listElement topez
        aspect: aspect.
      objName := self object displayWith: listElement displayPolicy.
      obj name: objName ]
    ifFalse: [ 
      index == 2
        ifTrue: [ 
          ".."
          "lets highlight ourselves in the .. list ..."
          highlightIndex := parentList removeLast ]
        ifFalse: [ parentList add: index ] ].
  windowName := listElement editorWindowName.
  aspect == #'browse'
    ifTrue: [ 
      "when we're browsing there is a diversity of windows involvled, so don't try to reuse the same window ... #view and #inspect reuse window as navigator"
      windowName := nil ].
  obj
    edit: parent
    topez: listElement topez
    aspect: aspect
    selectionIndex: nil
    highlightIndex: highlightIndex
    parentListIndex: parentList
    windowName: windowName
    windowId: nil
    windowLocation: nil.
  ^ nil