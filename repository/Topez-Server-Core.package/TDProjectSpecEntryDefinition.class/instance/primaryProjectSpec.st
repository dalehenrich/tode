accessing
primaryProjectSpec
  primaryProjectSpec ifNil: [ ^ self projectSpec ].
  ^ primaryProjectSpec