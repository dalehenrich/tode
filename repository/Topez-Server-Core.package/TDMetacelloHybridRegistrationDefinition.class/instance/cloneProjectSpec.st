accessing
cloneProjectSpec
  self repositorySpec type = 'github'
    ifTrue: [ ^ self projectSpec ].
  ^ self hybridBaselineProjectSpec