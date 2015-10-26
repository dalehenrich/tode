accessing
gitCommit
  self hasGitRepository
    ifFalse: [ ^ nil ].
  ^ self entry gitCommit