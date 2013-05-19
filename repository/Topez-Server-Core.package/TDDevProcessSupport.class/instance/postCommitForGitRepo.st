as yet unclassified
postCommitForGitRepo
  | projectName |
  projectName := tokens at: 2.
  self postCommitForGitRepo: projectName