debug ops
dbFinishStep
  | frameIndex stack currentFrame |
  processTerminated
    ifTrue: [ ^ #'close' ].
  frameIndex := 1.
  stack := self theStack.
  stack navigateFrame: frameIndex.
  currentFrame := stack currentFrame.
  ^ self objectSerializer
    toString:
      {#'listIndex:'.
      (currentFrame frameIndex)}