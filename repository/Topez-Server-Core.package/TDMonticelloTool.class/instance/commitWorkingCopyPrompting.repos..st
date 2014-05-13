as yet unclassified
commitWorkingCopyPrompting: aWorkingCopy repos: targetRepos
  | newVersion versionName commitMessage |
  newVersion := [ aWorkingCopy newVersion ]
    on: MCVersionNameAndMessageRequest
    do: [ :notification | 
      versionName := (GsTextInteraction
        prompt: 'Please enter a name for your version:'
        template: notification suggestedName) signal.
      versionName ifNil: [ notification resume: nil ].
      commitMessage := (GsMultiLineTextInteraction
        prompt: 'Please enter a commit message:') signal.
      (commitMessage ~~ nil and: [ commitMessage isEmpty not ])
        ifTrue: [ 
          notification
            resume:
              {versionName.
              commitMessage} ].
      notification resume: nil ].
  newVersion
    ifNotNil: [ 
      targetRepos
        do: [ :repository | 
          repository storeVersion: newVersion.
          Transcript
            cr;
            show:
                'Committed: ' , newVersion printString , ' -- ' , repository printString ] ].
  self topez commitTransaction.
  ^ newVersion