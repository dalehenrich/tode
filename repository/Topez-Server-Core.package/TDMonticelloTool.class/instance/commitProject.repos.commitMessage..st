as yet unclassified
commitProject: projectSpec repos: targetRepos commitMessage: commitMessage
  | workingCopies |
  workingCopies := (self modifiedPackagesForProjectSpec: projectSpec)
    collect: [ :packageSpec | packageSpec workingCopy ].
  ^ self
    commitWorkingCopies: workingCopies
    repos: targetRepos
    commitMessage: commitMessage