as yet unclassified
debug
  "debug"

  | exceptionProcess exception stackNodePath |
  exceptionProcess := self topez serverStatus exceptionProcess.
  exception := self topez serverStatus exception.
  topez := self topez spawnDebugger: exception description.
  topez exception: exception process: exceptionProcess.
  stackNode := self createStackNodeFor: exceptionProcess.
  topez
    homeNode: stackNode;
    currentNode: stackNode.
  self theStack debugTool: self.
  self theStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'stack')
        parentObject: stackNode;
        yourself)