as yet unclassified
itemSelected: listElement at: index
  | frameNode |
  self object navigateFrame: index.
  self object currentFrame
    edit: listElement parentNode
      topez: listElement topez
      aspect: #'source'
      windowId: nil;
    edit: listElement parentNode
      topez: listElement topez
      aspect: #'contents'
      windowId: nil.
  frameNode := listElement topez
    lookup: listElement topez homeNode printString , self object currentFrame frameIndex asString.
  listElement topez currentNode: frameNode.
  ^ nil