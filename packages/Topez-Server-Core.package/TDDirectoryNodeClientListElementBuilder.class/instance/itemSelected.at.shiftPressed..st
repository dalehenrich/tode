as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | aspect parent obj itemAttribute |
  itemAttribute := listElement itemCache at: index.
  obj := itemAttribute object.
  parent := itemAttribute parent.
  aspect := itemAttribute aspect.
  index == 1
    ifTrue: [ 
      "."
      "toggle between view and inspect on subject of list"
      aspect := aspect == #'inspect'
        ifTrue: [ #'view' ]
        ifFalse: [ #'inspect' ].
      obj := (obj asTDObjectNode: obj topez: listElement topez aspect: aspect)
        name: (self object tzNodeDisplay: 80 displayOops: listElement topez displayOops compacted: true);
        yourself ].
  index == 2
    ifTrue: [ 
      ".."
      "nothing special"
       ].
  shiftPressed
    ifTrue: [ 
      obj dotSelfObject
        edit: parent
        topez: listElement topez
        aspect: #'browse'
        windowName: nil
        windowId: nil ]
    ifFalse: [ 
      obj
        edit: parent
        topez: listElement topez
        aspect: aspect
        windowName: self editorWindowName
        windowId: nil ].
  ^ nil