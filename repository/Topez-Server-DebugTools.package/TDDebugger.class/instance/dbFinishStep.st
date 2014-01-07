debug ops
dbFinishStep
  | frameIndex stack |
  frameIndex := 1.
  stack := self theStack.
  stack navigateFrame: frameIndex.
  (stack currentFrame frameContents == nil
    or: [ 
      "needed for G/S 2.4 to recognize when process is no longer active .. may be nil"
      processTerminated == true ])
    ifTrue: [ ^ #'close' ].
  ^ #'refreshList'