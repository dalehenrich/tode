as yet unclassified
dbFinishStep: node
  | frameIndex |
  frameIndex := 1.
  stackNode := node.
  self dbStack navigateFrame: frameIndex.
  self dbStack currentFrame frameContents == nil
    ifTrue: [ ^ STON fromString: processResult ].
  self dbStack
    edit: stackNode
    topez: topez
    aspect: #'view'
    windowId: nil.
  ^ topez currentNode