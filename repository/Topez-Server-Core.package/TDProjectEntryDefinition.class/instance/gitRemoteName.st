accessing
gitRemoteName
  gitRemoteName ifNil: [ ^ 'origin' ].
  ^ gitRemoteName