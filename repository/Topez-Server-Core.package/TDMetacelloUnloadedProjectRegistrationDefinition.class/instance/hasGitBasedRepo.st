testing
hasGitBasedRepo
  self isValid
    ifFalse: [ ^ false ].
  super hasGitBasedRepo
    ifTrue: [ ^ true ].
  ^ self hybridRepositorySpec notNil