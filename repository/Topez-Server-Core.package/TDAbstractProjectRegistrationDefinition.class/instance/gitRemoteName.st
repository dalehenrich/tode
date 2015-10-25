accessing
gitRemoteName
  self hasGitRepository
    ifFalse: [ ^ nil ].
  ^ self entry gitRemoteName