as yet unclassified
gitmergetool: gitRepoDirectory mergerCompletionBlock: aMergerCompletionBlock mergerAbortBlock: aMergerAbortBlock
  ^ self
    gitmergetool: gitRepoDirectory
    mergerCompletionBlock: aMergerCompletionBlock
    mergerAbortBlock: aMergerAbortBlock
    windowLabel: 'Merge ' , gitRepoDirectory fullName