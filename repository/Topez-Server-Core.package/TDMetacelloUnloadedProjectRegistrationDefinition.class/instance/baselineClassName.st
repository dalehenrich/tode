accessing
baselineClassName
  self isBaselineBased
    ifFalse: [ ^ nil ].
  self projectSpec projectClass ifNil: [ ^ nil ].
  ^ self projectSpec className