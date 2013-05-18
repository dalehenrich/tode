as yet unclassified
commitWorkingCopies: workingCopies commitMessage: commitMessage
  | cacheRepository committedPackages |
  cacheRepository := MCCacheRepository default.
  committedPackages := Array new.
  workingCopies
    do: [ :wc | 
      | gofer repositoryList packageSpec info repositories targetRepos |
      repositories := wc repositoryGroup repositories
        reject: [ :repo | repo = cacheRepository ].
      targetRepos := #().
      wc ancestors isEmpty not
        ifTrue: [ 
          info := wc ancestors first.
          targetRepos := repositories
            select: [ :repo | (repo versionWithInfo: info) notNil ] ].
      targetRepos isEmpty
        ifTrue: [ targetRepos := repositories ].
      gofer := Gofer new.
      gofer disablePackageCache.
      targetRepos
        do: [ :repository | 
          Transcript
            cr;
            show:
                'Using ' , repository description printString , ' for '
                    , wc packageName printString.
          gofer repository: repository ].
      gofer package: wc packageName.
      gofer commit: commitMessage.
      committedPackages add: wc packageName ].
  ^ committedPackages