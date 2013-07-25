as yet unclassified
commitWorkingCopies: workingCopies repos: targetRepos commitMessage: commitMessage
  | committedVersions |
  committedVersions := OrderedCollection new.
  workingCopies
    do: [ :wc | 
      | newVersion |
      newVersion := self
        commitWorkingCopy: wc
        repos: targetRepos
        commitMessage: commitMessage.
      committedVersions add: newVersion.
      Transcript
        cr;
        show:
            'Committed: ' , newVersion printString , ' -- ' , targetRepos printString ].
  ^ committedVersions