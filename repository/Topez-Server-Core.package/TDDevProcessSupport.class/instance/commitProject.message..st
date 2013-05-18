as yet unclassified
commitProject: projectName message: commitMessage
  | projectSpec targetRepos tool |
  projectSpec := self projectSpecFor: projectName.
  targetRepos := {(self repositoryFor: projectName)}.
  tool := topez toolInstanceFor: 'mm'.
  tool
    commitProject: projectSpec
    repos: targetRepos
    commitMessage: commitMessage