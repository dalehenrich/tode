as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect obj parentObj itemAttribute toggled windowName builderAspect objName |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parentObj := itemAttribute parent.
  aspect := itemAttribute aspect.
  aspect == #'edit'
    ifTrue: [ 
      "convert #edit (source editor) to #navigate"
      aspect := #'navigate' ].
  (obj respondsTo: #'builderAspect')
    ifTrue: [ 
      builderAspect := obj builderAspect.
      builderAspect == #'print'
        ifTrue: [ 
          "convert #print (source editor) to #view for navigator"
          builderAspect := #'view'.
          obj := obj dotSelfObject
            asTDObjectNode: obj
            topez: listElement topez
            aspect: builderAspect.
          objName := self object displayWith: listElement displayPolicy.
          obj name: objName ] ].
  toggled := false.
  index == 1
    ifTrue: [ 
      "."
      "toggle between view and inspect on subject of list"
      toggled := true.
      builderAspect == #'inspect'
        ifTrue: [ builderAspect := #'view' ]
        ifFalse: [ builderAspect := #'inspect' ].
      (obj respondsTo: #'dotSelfObject')
        ifTrue: [ 
          obj := obj dotSelfObject
            asTDObjectNode: obj
            topez: listElement topez
            aspect: builderAspect.
          objName := self object displayWith: listElement displayPolicy.
          obj name: objName ] ].
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
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: aspect)
        builderAspect: builderAspect;
        parentObject: parentObj;
        windowName: windowName;
        yourself).
  ^ nil