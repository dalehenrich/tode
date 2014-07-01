accessing
hybridRepositorySpec
  | repositorySpec |
  self isHybridBased
    ifFalse: [ ^ nil ].
  self hybridBaselineProjectSpec repositorySpecs
    do: [ :spec | repositorySpec := spec ].
  ^ repositorySpec