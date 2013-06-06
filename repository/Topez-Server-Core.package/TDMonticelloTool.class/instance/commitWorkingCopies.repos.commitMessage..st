as yet unclassified
commitWorkingCopies: workingCopies repos: targetRepos commitMessage: commitMessage
  | committedPackages gofer |
  committedPackages := OrderedCollection new.
  gofer := Gofer new.
  gofer disablePackageCache.
  targetRepos do: [ :repository | gofer repository: repository ].
  workingCopies
    do: [ :wc | 
      Transcript
        cr;
        show: 'Committing: ' , wc packageName printString.
      gofer package: wc packageName.
      committedPackages add: wc packageName.
      targetRepos
        do: [ :repos | 
          Transcript show: ' --' , repos description.
          wc repositoryGroup addRepository: repos ] ].
  gofer commit: commitMessage.
  ^ committedPackages