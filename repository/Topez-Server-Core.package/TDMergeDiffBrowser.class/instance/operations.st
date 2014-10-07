accessing
operations
  stFilterBlock ifNil: [ ^ self merger operations ].
  ^ self merger operations select: stFilterBlock