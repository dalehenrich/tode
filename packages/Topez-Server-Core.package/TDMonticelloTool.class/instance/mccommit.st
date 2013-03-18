as yet unclassified
mccommit
  "mc commit <pkg-name>"

  | workingCopy packageName |
  packageName := tokens at: 2.
  workingCopy := MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [ ^ 'no matching package found' ].
  topez
    accumulateTextAndDo: [ :commitMessage :accumulateObjIn | 
      | cacheRepository gofer repositoryList packageSpec info repositories targetRepos |
      cacheRepository := MCCacheRepository default.
      repositories := workingCopy repositoryGroup repositories
        reject: [ :repo | repo = cacheRepository ].
      targetRepos := #().
      workingCopy ancestors isEmpty not
        ifTrue: [ 
          info := workingCopy ancestors first.
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
                    , workingCopy packageName printString.
          gofer repository: repository ].
      gofer package: workingCopy packageName.
      gofer commit: commitMessage ].
  ^ TDCommandResult new
    displayText: 'Please enter commit comment';
    resultObject: 'Please enter commit comment';
    yourself