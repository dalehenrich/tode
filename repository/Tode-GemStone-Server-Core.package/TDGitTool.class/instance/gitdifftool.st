as yet unclassified
gitdifftool
  "
  git difftool <commitish-1> <commitish-2> [ <git-repo-path> ]
      difftool  <commitish-1> <commitish-2> [ @<git-repo-directory> ]
"

  | source destination gitRepoDirectory |
  source := destination := ''.
  tokens size > 2
    ifTrue: [ 
      source := tokens at: 2.
      destination := tokens at: 3 ].
  gitRepoDirectory := tokens size <= 3
    ifTrue: [ self resolveDefaultGitRepoDirectory ]
    ifFalse: [ 
      | gitRepoArg |
      gitRepoArg := tokens at: 4.
      (gitRepoArg beginsWith: '@')
        ifTrue: [ self resolveAtPathReference: gitRepoArg ]
        ifFalse: [ ServerFileDirectory on: gitRepoArg ] ].
  ^ self
    gitdifftool: source
    destination: destination
    gitRepoDirectory: gitRepoDirectory