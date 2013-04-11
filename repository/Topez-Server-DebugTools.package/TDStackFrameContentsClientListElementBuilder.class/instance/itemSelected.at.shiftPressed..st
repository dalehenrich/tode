as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect obj parentObj itemAttribute toggled windowName |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parentObj := itemAttribute parent.
  aspect := itemAttribute aspect.
  aspect == #'edit'
    ifTrue: [ 
      "convert #edit (source editor) to #navigate"
      aspect := #'navigate' ].
  toggled := false.
  index == 1
    ifTrue: [ 
      | objName builderAspect |
      "."
      "toggle between view and inspect on subject of list"
      toggled := true.
      aspect := aspect == #'inspect'
        ifTrue: [ builderAspect := #'view' ]
        ifFalse: [ builderAspect := #'inspect' ].
      obj := obj dotSelfObject
        asTDObjectNode: obj
        topez: listElement topez
        aspect: builderAspect.
      objName := self object displayWith: listElement displayPolicy.
      obj name: objName ].
  index == 2
    ifTrue: [ 
      ".."
      "nothing special"
       ].
  windowName := listElement editorWindowName.
  toggled
    ifTrue: [ 
      "when we're browsing there is a diversity of windows involvled, so don't try to reuse the same window ... #view and #inspect reuse window as navigator"
      windowName := nil ].
  obj
    edit: parentObj
    topez: listElement topez
    aspect: aspect
    windowName: windowName
    windowId: nil.
  ^ nil