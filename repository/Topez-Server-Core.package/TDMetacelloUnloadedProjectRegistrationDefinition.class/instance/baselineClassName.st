accessing
baselineClassName
  self isHybridBased
    ifTrue: [ ^ self hybridBaselineProjectSpec className ].
  self isBaselineBased
    ifFalse: [ ^ nil ].
  self projectSpec projectClass ifNil: [ ^ nil ].
  ^ self projectSpec className