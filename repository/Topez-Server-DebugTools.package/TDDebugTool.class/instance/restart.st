as yet unclassified
restart
  "db restart"

  | stack process level |
  ""
  stackNode := self defaultHomeNode.
  stack := stackNode basicContents.
  process := stack process.
  level := stack currentFrame frameIndex.
  process _trimStackToLevel: level.
  stack resetFrames.
  ^ self dbFinishStep: stackNode