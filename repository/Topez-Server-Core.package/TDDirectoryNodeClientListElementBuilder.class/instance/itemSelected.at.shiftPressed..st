as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect parent obj itemAttribute windowName highlightIndex parentList toggled |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parent := itemAttribute parent.
  aspect := itemAttribute aspect.
  parentList := itemAttribute listIndex copy.
  toggled := false.
  Transcript
    cr;
    show:
        'incoming view: ' , itemAttribute aspect printString , ' builder: '
            , obj builderAspect printString.
  index == 1
    ifTrue: [ 
      | objName builderAspect |
      "."
      "toggle between view and inspect on subject of list"
      toggled := true.
      aspect == #'inspect'
        ifTrue: [ 
          builderAspect := #'view'.
          aspect := #'browse' ]
        ifFalse: [ builderAspect := aspect := #'inspect' ].
      obj := obj dotSelfObject
        asTDObjectNode: obj
        topez: listElement topez
        aspect: builderAspect.
      objName := self object displayWith: listElement displayPolicy.
      obj name: objName ]
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
  Transcript
    cr;
    show:
        'outgoing view: ' , aspect printString , ' builder: '
            , obj builderAspect printString.
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