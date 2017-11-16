accessing
frameContents
    frameContents ifNil: [ frameContents := self process _frameContentsAt: self frameIndex ].
    ^ frameContents