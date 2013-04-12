as yet unclassified
navigateStack: increment
  stackNode := self defaultHomeNode.
  self dbStack navigateStack: increment.
  self dbStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'navigate')
        parentObject: stackNode;
        yourself).
  ^ topez currentNode