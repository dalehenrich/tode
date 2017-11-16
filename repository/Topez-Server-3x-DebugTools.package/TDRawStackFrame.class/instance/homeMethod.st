accessing
homeMethod
  ^ (self frameContents at: 7) ifNil: [ self gsMethod ifNil: [ ^ nil ].
      self gsMethod homeMethod ]