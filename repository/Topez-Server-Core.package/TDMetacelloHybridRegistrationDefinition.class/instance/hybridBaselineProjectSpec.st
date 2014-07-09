accessing
hybridBaselineProjectSpec
  | projectSpec |
  self isHybridBased
    ifFalse: [ ^ nil ].
  ^ self baselineProjectSpec