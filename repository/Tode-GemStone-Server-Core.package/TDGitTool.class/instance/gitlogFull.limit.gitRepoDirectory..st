as yet unclassified
gitlogFull: commitish limit: limit gitRepoDirectory: gitRepoDirectory
  | commitLog |
  commitLog := self
    gitlogIn: gitRepoDirectory
    with: ' -' , limit printString , ' ' , commitish.
  ^ commitLog