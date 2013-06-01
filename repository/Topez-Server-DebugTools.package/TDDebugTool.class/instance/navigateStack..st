as yet unclassified
navigateStack: increment
  stackNode := self defaultHomeNode.
  self dbStack navigateStack: increment.
  self dbStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'stack')
        parentObject: stackNode;
        yourself).
  ^ topez currentNode