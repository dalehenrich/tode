as yet unclassified
navigateFrame: frameIndex
    (frameIndex > 0 and: [ frameIndex < self frames size ])
        ifTrue: [ currentFrame := self frames at: frameIndex ]