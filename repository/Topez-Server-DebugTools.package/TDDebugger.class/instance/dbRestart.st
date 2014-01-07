debug ops
dbRestart
  | stack process level |
  stack := self theStack.
  process := stack process.
  level := stack currentFrame frameIndex.
  process _trimStackToLevel: level.
  stack resetFrames.
  ^ self dbFinishStep