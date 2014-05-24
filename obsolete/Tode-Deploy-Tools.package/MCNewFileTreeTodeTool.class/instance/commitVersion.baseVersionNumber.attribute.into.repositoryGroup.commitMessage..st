as yet unclassified
commitVersion: aVersion baseVersionNumber: baseVersionNumber attribute: attribute into: targetRepo repositoryGroup: repositoryGroup commitMessage: aCommitMessage
  ^ self
    commitVersion: aVersion
    baseVersionNumber: baseVersionNumber
    branch: attribute asString
    author: MetacelloPlatform current authorName
    into: targetRepo
    repositoryGroup: repositoryGroup
    commitMessage: aCommitMessage