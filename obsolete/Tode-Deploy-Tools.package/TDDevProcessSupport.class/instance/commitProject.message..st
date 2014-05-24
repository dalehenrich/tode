as yet unclassified
commitProject: projectName message: commitMessage
  | projectSpec targetRepos tool commitedVersions |
  projectSpec := self projectSpecFor: projectName.
  targetRepos := {(self repositoryFor: projectName)}.
  tool := topez toolInstanceFor: 'mm'.
  commitedVersions := tool
    commitProject: projectSpec
    repos: targetRepos
    commitMessage: commitMessage.
  ^ commitedVersions isEmpty not