as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect parent obj itemAttribute |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parent := itemAttribute parent.
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
  obj
    edit: parent
    topez: listElement topez
    aspect: aspect
    windowName: listElement editorWindowName
    windowId: nil.
  ^ nil