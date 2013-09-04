as yet unclassified
gitmergetool
  "
  git mergetool [ <git-repo-directory> ]
      mergetool [ @<git-repo-path> ]
"

  | gitRepoDirectory |
  gitRepoDirectory := tokens size = 1
    ifTrue: [ self resolveDefaultGitRepoDirectory ]
    ifFalse: [ 
      | gitRepoArg |
      gitRepoArg := tokens at: 2.
      (gitRepoArg beginsWith: '@')
        ifTrue: [ self resolveAtPathReference: gitRepoArg ]
        ifFalse: [ ServerFileDirectory on: gitRepoArg ] ].
  ^ self gitmergetool: gitRepoDirectory