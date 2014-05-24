as yet unclassified
deploy
  | arg |
  version := tokens at: 2.
  configRepo := self resolveRepositoryReference: (tokens at: 3).
  ss3Repo := self resolveRepositoryReference: (tokens at: 4).
  tmpRepo := self resolveRepositoryReference: (tokens at: 5).
  arg := tokens at: 6.
  commitMessage := (arg beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: arg ]
    ifFalse: [ arg ].
  updateRepo := false.
  tokens size > 6
    ifTrue: [ updateRepo := (tokens at: 7) = 'true' ].
  ^ self doDeploy