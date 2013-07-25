as yet unclassified
commitVersion: version baseVersionNumber: baseVersionNumber attribute: attribute into: targetRepo repositoryGroup: repositoryGroup commitMessage: commitMessage
  ^ self
    commitVersion: version
    baseVersionNumber: baseVersionNumber
    branch: attribute asString
    author: MetacelloPlatform current authorName
    into: {targetRepo}
    repositoryGroup: repositoryGroup
    commitMessage: commitMessage