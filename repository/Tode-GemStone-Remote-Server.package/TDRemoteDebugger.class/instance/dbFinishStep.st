debug ops
dbFinishStep
  | frameIndex stack currentFrame |
  frameIndex := 1.
  stack := self theStack.
  stack navigateFrame: frameIndex.
  currentFrame := stack currentFrame.
  currentFrame frameDict isEmpty
    ifTrue: [ 
      self topez effectiveApiVersion < '1.3.0' asMetacelloVersionNumber
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