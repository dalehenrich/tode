as yet unclassified
navigateStack: increment
  stackNode := self defaultHomeNode.
  self theStack navigateStack: increment.
  self theStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'stack')
        parentObject: stackNode;
        yourself).
  ^ topez currentNode