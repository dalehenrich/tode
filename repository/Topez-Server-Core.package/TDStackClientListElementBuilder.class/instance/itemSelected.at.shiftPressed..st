as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | frameNode |
  self object navigateFrame: index.
  self object currentFrame
    editUsing:
        ((TDEditorSpec topez: listElement topez editorAspect: #'source')
            parentObject: listElement parent;
            yourself);
    editUsing:
        ((TDEditorSpec topez: listElement topez editorAspect: #'contents')
            parentObject: listElement parent;
            yourself).
  frameNode := listElement topez
    lookup:
      listElement topez homeNode printString
        , self object currentFrame frameIndex asString.
  listElement topez currentNode: frameNode.
  ^ nil