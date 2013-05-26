as yet unclassified
commitProject: projectName message: commitMessage
  | projectSpec targetRepos tool commitedPackages |
  projectSpec := self projectSpecFor: projectName.
  targetRepos := {(self repositoryFor: projectName)}.
  tool := topez toolInstanceFor: 'mm'.
  commitedPackages := tool
    commitProject: projectSpec
    repos: targetRepos
    commitMessage: commitMessage.
  ^ commitedPackages isEmpty not