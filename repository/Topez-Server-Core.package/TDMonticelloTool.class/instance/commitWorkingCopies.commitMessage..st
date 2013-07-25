as yet unclassified
commitWorkingCopies: workingCopies commitMessage: commitMessage
  | cacheRepository committedVersions committedVersionsAndRepos |
  cacheRepository := MCCacheRepository default.
  committedVersionsAndRepos := OrderedCollection new.
  workingCopies
    do: [ :wc | 
      | committed info repositories targetRepos |
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
      committed := self
        commitWorkingCopies: {wc}
        repos: targetRepos
        commitMessage: commitMessage.
      committedVersionsAndRepos
        add:
          {committed.
          targetRepos} ].
  ^ committedVersionsAndRepos