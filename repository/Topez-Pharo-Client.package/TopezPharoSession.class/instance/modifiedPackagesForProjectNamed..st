api
modifiedPackagesForProjectNamed: projectName
    | spec toolbox modifiedPackages cacheRepository committedPackages |
    spec := (Metacello image
        baseline: {projectName};
        silently;
        list) first.
    modifiedPackages := Dictionary new.
    (toolbox := MetacelloToolBox new project: spec projectClassProject)
        modifiedPackageSpecs: spec versionString
        packageSpecsDo: [ :versionSpec :packageSpec :monticelloWorkingCopy | 
            | repositories repositoryGroup wcRepositoryGroup |
            wcRepositoryGroup := monticelloWorkingCopy repositoryGroup.
            repositoryGroup := MCRepositoryGroup new.
            repositories := packageSpec repositories collect: [ :each | each createRepository ].
            repositories isEmpty
                ifTrue: [ 
                    repositories := versionSpec repositories collect: [ :repoSpec | repoSpec createRepository ].
                    wcRepositoryGroup repositories notEmpty
                        ifTrue: [ repositories := repositories select: [ :repo | wcRepositoryGroup includes: repo ] ].
                    repositories isEmpty
                        ifTrue: [ repositories := monticelloWorkingCopy repositoryGroup repositories reject: [ :repo | repo = MCCacheRepository default ] ] ].
            repositories
                do: [ :repo | 
                    (monticelloWorkingCopy possiblyNewerVersionsIn: repo) notEmpty
                        ifTrue: [ 
                            self
                                error:
                                    'There are possibly newer versions of the package ' , packageSpec name printString , ' in the repository '
                                        , repo description printString
                                        ,
                                            '. Cancel and manually merge if you want to pick up the changes from the later version.' ].
                    repositoryGroup addRepository: repo ].
            modifiedPackages at: packageSpec name put: repositoryGroup ].
    ^ modifiedPackages