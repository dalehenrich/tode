debug ops
dbFinishStep
  | frameIndex stack currentFrame |
  frameIndex := 1.
  stack := self theStack.
  stack navigateFrame: frameIndex.
  currentFrame := stack currentFrame.
  (currentFrame frameContents == nil
    or: [ 
      "needed for G/S 2.4 to recognize when process is no longer active .. may be nil"
      processTerminated == true ])
    ifTrue: [ 
      false
        ifTrue: [ ^ #'close' ]
        ifFalse: [ 
          ^ self objectSerializer
            toString:
              {#'closeWith:'.
              processResult} ] ].
  ^ self objectSerializer
    toString:
      {#'listIndex:'.
      (currentFrame frameIndex)}