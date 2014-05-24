as yet unclassified
gitlogtool: commitish limit: limit gitRepoDirectory: gitRepoDirectory label: labelString
  | block |
  block := [ 
  self
    gitlogIn: gitRepoDirectory
    with:
      '--date=relative --format="%h %cd %s" -' , limit printString , ' ' , commitish ].
  self
    browseFullCommitLog: block
    commitish: commitish
    limit: limit
    gitRepoDirectory: gitRepoDirectory
    label: labelString.
  ^ block value