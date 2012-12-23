as yet unclassified
currentFrame
  currentFrame ifNil: [ currentFrame := self frames at: 1 ].
  ^ currentFrame