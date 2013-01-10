accessing
gsCursor
  GsCursor isNil
    ifTrue: [ self initGsCursor ].
  ^ GsCursor