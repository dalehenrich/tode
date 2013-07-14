as yet unclassified
debug
  "debug"

  | exceptionProcess exception |
  exceptionProcess := self topez serverStatus exceptionProcess.
  Transcript
    cr;
    show: exceptionProcess asOop printString.
  exception := self topez serverStatus exception.
  topez := self topez spawnDebugger: exception description.
  topez exception: exception process: exceptionProcess.
  stackNode := topez lookup: self haloStackPath.
  topez
    homeNode: stackNode;
    currentNode: stackNode.
  self theStack
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'stack')
        parentObject: stackNode;
        yourself)