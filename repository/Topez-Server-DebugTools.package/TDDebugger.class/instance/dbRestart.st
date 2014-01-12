debug ops
dbRestart
  | stack |
  stack := self theStack.
  stack currentFrame trimToHomeFrame.
  stack resetFrames.
  ^ self dbFinishStep