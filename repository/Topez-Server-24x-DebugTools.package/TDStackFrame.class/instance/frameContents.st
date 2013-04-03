as yet unclassified
frameContents
  frameContents
    ifNil: [ frameContents := self process _frameContentsAt: self frameIndex ].
  ^ frameContents