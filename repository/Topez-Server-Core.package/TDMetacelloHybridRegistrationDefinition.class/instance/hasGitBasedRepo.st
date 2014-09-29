testing
hasGitBasedRepo
  super hasGitBasedRepo
    ifTrue: [ ^ true ].
  ^ self hybridRepositorySpec notNil