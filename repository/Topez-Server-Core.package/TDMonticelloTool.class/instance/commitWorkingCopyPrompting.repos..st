as yet unclassified
commitWorkingCopyPrompting: aWorkingCopy repos: targetRepos
  | newVersion versionName commitMessage |
  newVersion := [ aWorkingCopy newVersion ]
    on: MCVersionNameAndMessageRequest
    do: [ :notification | 
      versionName := TDTextRequest
        prompt: 'Please enter a name for your version:'
        template: notification suggestedName.
      versionName ifNil: [ notification resume: nil ].
      commitMessage := TDMultiLineTextRequest
        prompt: 'Please enter a commit message:'.
      (commitMessage ~~ nil and: [ commitMessage isEmpty not ])
        ifTrue: [ 
          notification
            resume:
              {versionName.
              commitMessage} ].
      notification resume: nil ].
  newVersion
    ifNotNil: [ targetRepos do: [ :repository | repository storeVersion: newVersion ] ].
  ^ newVersion