debug ops
dbFinishStep
  | frameIndex stack currentFrame |
  (ObjectLogEntry trace: 'dbFinishStep [1]') addToLog.
  frameIndex := 1.
  stack := self theStack.
  (ObjectLogEntry trace: 'dbFinishStep [2]' object: stack) addToLog.
  stack navigateFrame: frameIndex.
  currentFrame := stack currentFrame.
  (ObjectLogEntry trace: 'dbFinishStep [3]' object: currentFrame) addToLog.
  (currentFrame frameContents == nil
    or: [ 
      "needed for G/S 2.4 to recognize when process is no longer active .. may be nil"
      processTerminated == true ])
    ifTrue: [ 
      self topez effectiveApiVersion < '1.3.0' asMetacelloVersionNumber
        ifTrue: [ 
          (ObjectLogEntry trace: 'dbFinishStep [4]' object: #'close') addToLog.
          ^ #'close' ]
        ifFalse: [ 
          (ObjectLogEntry
            trace: 'dbFinishStep [5]'
            object:
              {#'closeWith:'.
              processResult}) addToLog.
          ^ self objectSerializer
            toString:
              {#'closeWith:'.
              processResult} ] ].
  (ObjectLogEntry
    trace: 'dbFinishStep [6]'
    object:
      {#'listIndex:'.
      (currentFrame frameIndex)}) addToLog.
  ^ self objectSerializer
    toString:
      {#'listIndex:'.
      (currentFrame frameIndex)}