as yet unclassified
itemSelected: listElement at: index
  | aspect obj parentObj itemAttribute |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parentObj := itemAttribute parent.
  aspect := itemAttribute aspect.
  index == 1
    ifTrue: [ 
      "."
      "toggle between view and inspect on subject of list"
      aspect := aspect == #'inspect'
        ifTrue: [ #'view' ]
        ifFalse: [ #'inspect' ].
      parentObj := self object.
      obj := (obj asTDObjectNode: parentObj topez: listElement topez aspect: aspect)
        name: self objectPrintString;
        yourself ].
  index == 2
    ifTrue: [ 
      ".."
      "nothing special"
       ].
  obj
    edit: parentObj
    topez: listElement topez
    aspect: aspect
    windowName: self editorWindowName
    windowId: nil.
  ^ nil