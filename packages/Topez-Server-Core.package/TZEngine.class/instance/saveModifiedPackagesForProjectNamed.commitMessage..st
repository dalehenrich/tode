as yet unclassified
saveModifiedPackagesForProjectNamed: projectName commitMessage: commitMessage
    "apologies to MetacelloToolBox"

    | modifiedPackages cacheRepository committedPackages |
    modifiedPackages := self modifiedPackagesForProjectNamed: projectName.
    modifiedPackages isEmpty
        ifTrue: [ ^ 'Empty modified packages list...no packages committed' ].
    cacheRepository := MCCacheRepository default.
    committedPackages := OrderedCollection new.
    modifiedPackages
        keysAndValuesDo: [ :packageName :repositoryGroup | 
            | gofer repositoryList packageSpec |
            gofer := Gofer new.
            gofer disablePackageCache.
            (repositoryGroup repositories reject: [ :repo | repo = cacheRepository ])
                do: [ :repository | gofer repository: repository ].
            gofer package: packageName.
            gofer commit: commitMessage.
            committedPackages add: packageName ].
    ^ committedPackages