as yet unclassified
commitProject: projectSpec repos: targetRepos commitMessage: commitMessage
  | workingCopies committed |
  workingCopies := (self modifiedPackagesForProjectSpec: projectSpec)
    collect: [ :packageSpec | packageSpec workingCopy ].
  committed := self
    commitWorkingCopies: workingCopies
    repos: targetRepos
    commitMessage: commitMessage.
  self topez commitTransaction.
  ^ committed