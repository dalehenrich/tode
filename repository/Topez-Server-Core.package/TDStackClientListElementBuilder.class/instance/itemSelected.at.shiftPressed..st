as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | frameNode |
  self object navigateFrame: index.
  self object currentFrame
    edit: listElement parent
      topez: listElement topez
      aspect: #'source'
      windowId: nil;
    edit: listElement parent
      topez: listElement topez
      aspect: #'contents'
      windowId: nil.
  frameNode := listElement topez
    lookup: listElement topez homeNode printString , self object currentFrame frameIndex asString.
  listElement topez currentNode: frameNode.
  ^ nil