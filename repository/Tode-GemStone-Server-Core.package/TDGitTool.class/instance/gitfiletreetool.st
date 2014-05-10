as yet unclassified
gitfiletreetool
  "
  git filetreetool <commitish-1> <commitish-2> [ <git-repo-path> ]
      filetreetool  <commitish-1> <commitish-2> [ @<git-repo-directory> ]
"

  | commitish1 commitish2 gitRepoDirectory |
  commitish1 := tokens at: 2.
  commitish2 := tokens at: 3.
  gitRepoDirectory := tokens size = 3
    ifTrue: [ self resolveDefaultGitRepoDirectory ]
    ifFalse: [ 
      | gitRepoArg |
      gitRepoArg := tokens at: 4.
      (gitRepoArg beginsWith: '@')
        ifTrue: [ self resolveAtPathReference: gitRepoArg ]
        ifFalse: [ ServerFileDirectory on: gitRepoArg ] ].
  ^ self
    gitfiletreetool: commitish1
    commitish2: commitish2
    gitRepoDirectory: gitRepoDirectory