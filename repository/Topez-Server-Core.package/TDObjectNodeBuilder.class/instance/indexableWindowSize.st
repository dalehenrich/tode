accessing
indexableWindowSize
  indexableWindowSize ifNil: [ ^ self class defaultIndexableWindowSize ].
  ^ indexableWindowSize