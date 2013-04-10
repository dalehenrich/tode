as yet unclassified
debug
  "debug"

  | exceptionProcess exception |
  exceptionProcess := self topez serverStatus exceptionProcess.
  exception := self topez serverStatus exception.
  topez := self topez spawnDebugger: exception description.
  topez exception: exception process: exceptionProcess.
  stackNode := topez lookup: self haloStackPath.
  topez
    homeNode: stackNode;
    currentNode: stackNode.
  self dbStack
    edit: stackNode
    topez: topez
    aspect: #'browse'
    windowId: nil