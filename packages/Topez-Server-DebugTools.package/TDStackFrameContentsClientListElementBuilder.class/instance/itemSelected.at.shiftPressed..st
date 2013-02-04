as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect obj parentObj itemAttribute |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parentObj := itemAttribute parent.
  aspect := itemAttribute aspect.
  index == 1
    ifTrue: [ 
      | objName |
      "."
      "toggle between view and inspect on subject of list"
      aspect := aspect == #'inspect'
        ifTrue: [ #'view' ]
        ifFalse: [ #'inspect' ].
      obj := obj dotSelfObject asTDObjectNode: obj topez: listElement topez aspect: aspect.
      objName := self object displayWith: listElement displayPolicy.
      obj name: objName ].
  index == 2
    ifTrue: [ 
      ".."
      "nothing special"
       ].
  shiftPressed
    ifTrue: [ 
      obj dotSelfObject
        edit: parentObj
        topez: listElement topez
        aspect: #'browse'
        windowName: nil
        windowId: nil ]
    ifFalse: [ 
      obj
        edit: parentObj
        topez: listElement topez
        aspect: aspect
        windowName: listElement editorWindowName
        windowId: nil ].
  ^ nil