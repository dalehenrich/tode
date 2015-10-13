as yet unclassified
mccommit
  "
  mc commit <pkg-name> <commit-message>
     commit @<workingCopy-path> <commit-message>
  "

  | workingCopy packageName commitMessage |
  packageName := tokens at: 2.
  workingCopy := self resolveWorkingCopyReference: packageName.
  commitMessage := tokens at: 3.
  self mccommit: {workingCopy} commitMessage: commitMessage