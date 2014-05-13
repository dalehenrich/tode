testing
hasGitRepository: registration
  [ self projectTool gitRepoDirForRegistration: registration ]
    on: Error
    do: [ :ex | ^ false ].
  ^ true