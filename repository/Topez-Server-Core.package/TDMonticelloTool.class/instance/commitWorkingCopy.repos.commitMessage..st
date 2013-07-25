as yet unclassified
commitWorkingCopy: aWorkingCopy repos: targetRepos commitMessage: commitMessage
  | version |
  version := [ aWorkingCopy newVersion ]
    on: MCVersionNameAndMessageRequest
    do: [ :notification | 
      notification
        resume: (Array with: notification suggestedName with: commitMessage) ].
  ^ targetRepos
    collect: [ :repository | 
      repository storeVersion: version.
      version ]