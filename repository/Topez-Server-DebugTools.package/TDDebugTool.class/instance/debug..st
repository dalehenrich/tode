as yet unclassified
debug: aGsProcess
  "debug"

  | exceptionProcess stackNodePath |
  exceptionProcess := aGsProcess.
  topez := self topez spawnDebugger: aGsProcess printString.
  topez exception: nil process: exceptionProcess.
  stackNode := self createStackNodeFor: exceptionProcess.
  topez
    homeNode: stackNode;
    currentNode: stackNode.
  self theStack debugTool: self.
  stackWindowId := self theStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'stack')
        parentObject: stackNode;
        yourself)