as yet unclassified
commitWorkingCopyPrompting: aWorkingCopy
  | targetRepos repositories cacheRepository |
  cacheRepository := MCCacheRepository default.
  repositories := aWorkingCopy repositoryGroup repositories
    reject: [ :repo | repo = cacheRepository ].
  targetRepos := #().
  aWorkingCopy ancestors isEmpty not
    ifTrue: [ 
      | info |
      info := aWorkingCopy ancestors first.
      targetRepos := repositories
        select: [ :repo | (repo versionWithInfo: info) notNil ] ].
  targetRepos isEmpty
    ifTrue: [ targetRepos := repositories ].
  ^ self commitWorkingCopyPrompting: aWorkingCopy repos: targetRepos