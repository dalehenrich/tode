as yet unclassified
debug
  "debug"

  | exceptionProcess exception |
  exceptionProcess := self topez serverStatus exceptionProcess.
  exception := self topez serverStatus exception.
  topez := self topez spawnWindow.
  topez exception: exception process: exceptionProcess.
  stackNode := topez lookup: self haloStackPath.
  topez
    homeNode: stackNode;
    currentNode: stackNode.
  false
    ifTrue: [ 
      self dbStack currentFrame edit: topez windowId: nil.
      ^ (topez commands at: 'ds') block
        value: topez
        value: stackNode
        value:
          {'ds'.
          'stack'}
        value: nil ]