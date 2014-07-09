testing
hasGithubRepo
  self repositorySpec type = 'github'
    ifTrue: [ ^ true ].
  ^ self hybridRepositorySpec notNil