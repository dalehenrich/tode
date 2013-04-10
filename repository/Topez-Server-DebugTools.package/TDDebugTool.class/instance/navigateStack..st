as yet unclassified
navigateStack: increment
  stackNode := self defaultHomeNode.
  self dbStack navigateStack: increment.
  self dbStack
    edit: stackNode
    topez: topez
    aspect: #'browse'
    windowId: nil.
  ^ topez currentNode