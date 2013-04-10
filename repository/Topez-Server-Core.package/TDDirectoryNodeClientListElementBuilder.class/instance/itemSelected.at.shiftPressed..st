as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect parent obj itemAttribute windowName highlightIndex parentList toggled |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parent := itemAttribute parent.
  aspect := itemAttribute aspect.
  parentList := itemAttribute listIndex copy.
  toggled := false.
  index == 1
    ifTrue: [ 
      | objName builderAspect |
      "."
      "toggle between view and inspect on subject of list"
      toggled := true.
      Transcript
        cr;
        show: aspect printString.
      aspect == #'inspect'
        ifTrue: [ 
          builderAspect := #'view'.
          aspect := #'browse' ]
        ifFalse: [ builderAspect := aspect := #'inspect' ].
      builderAspect == #'inspect'
        ifTrue: [ 
          obj := obj dotSelfObject
            asTDObjectNode: obj
            topez: listElement topez
            aspect: builderAspect.
          objName := self object displayWith: listElement displayPolicy.
          obj name: objName ]
        ifFalse: [ obj := obj dotSelfObject ] ]
    ifFalse: [ 
      index == 2
        ifTrue: [ 
          ".."
          "lets highlight ourselves in the .. list ..."
          parentList isEmpty not
            ifTrue: [ highlightIndex := parentList removeLast ] ]
        ifFalse: [ parentList add: index ] ].
  windowName := listElement editorWindowName.
  toggled
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