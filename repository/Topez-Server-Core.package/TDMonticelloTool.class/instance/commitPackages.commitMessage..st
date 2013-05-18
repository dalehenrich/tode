as yet unclassified
commitPackages: packageSpecs commitMessage: commitMessage
  | cacheRepository committedPackages |
  cacheRepository := MCCacheRepository default.
  committedPackages := Array new.
  packageSpecs
    do: [ :pkgSpec | 
      | gofer repositoryList packageSpec wc info repositories targetRepos |
      wc := pkgSpec workingCopy.
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
                    , pkgSpec name printString.
          gofer repository: repository ].
      gofer package: pkgSpec name.
      gofer commit: commitMessage.
      committedPackages add: pkgSpec name ].
  ^ committedPackages