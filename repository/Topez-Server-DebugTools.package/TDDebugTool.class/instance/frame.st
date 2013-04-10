as yet unclassified
frame
  | frameIndex |
  stackNode := self defaultHomeNode.
  frameIndex := tokens size > 1
    ifTrue: [ (tokens at: 2) asNumber ]
    ifFalse: [ self dbStack currentFrame frameIndex ].
  self dbStack navigateFrame: frameIndex.
  self dbStack
    edit: stackNode
    topez: topez
    aspect: #'browse'
    windowId: nil.
  ^ topez currentNode