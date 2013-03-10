as yet unclassified
mmcommit
  "mm commit <config>"

  | registration projectSpec dirty |
  registration := self getRegistrationFor: (tokens at: 2).
  projectSpec := registration lookupBaselineSpec.
  dirty := self modifiedPackagesForProjectSpec: projectSpec.
  dirty isEmpty
    ifTrue: [ ^ 'No modified packages to commit' ].
  topez
    accumulateTextAndDo: [ :commitMessage :accumulateObjIn | 
      | cacheRepository committedPackages |
      cacheRepository := MCCacheRepository default.
      committedPackages := Array new.
      dirty
        do: [ :pkgSpec | 
          | gofer repositoryList packageSpec wc info repositories targetRepos |
          wc := pkgSpec workingCopy.
          repositories := wc repositoryGroup repositories
            reject: [ :repo | repo = cacheRepository ].
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
      committedPackages ].
  ^ 'Please enter commit comment'