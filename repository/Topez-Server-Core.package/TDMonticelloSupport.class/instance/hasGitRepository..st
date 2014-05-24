testing
hasGitRepository: registration
  [ self gitRepoDirForRegistration: registration ]
    on: Error
    do: [ :ex | ^ false ].
  ^ true