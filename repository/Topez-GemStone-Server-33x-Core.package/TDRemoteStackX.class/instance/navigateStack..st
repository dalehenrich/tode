as yet unclassified
navigateStack: increment
    | frameIndex |
    frameIndex := self currentFrame frameIndex + increment.
    self navigateFrame: frameIndex