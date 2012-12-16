as yet unclassified
navigateStack: increment
    | frameIndex |
    frameIndex := self currentFrame frameIndex + increment.
    (frameIndex > 0 and: [ frameIndex < self frames size ])
        ifTrue: [ currentFrame := self frames at: frameIndex ]