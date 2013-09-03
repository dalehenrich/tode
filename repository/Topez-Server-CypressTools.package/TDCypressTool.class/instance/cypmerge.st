as yet unclassified
cypmerge
  "cyp merge <package-name> <commitish> @<repository-path>"

  "in reality, for cypress we are going to have to use the git merge capabilities and parse the working tree files that have conflicts (see git ls-files -u)"

  | packageName commitish cypressRepository package packageStructure imageSnapshot versionSnapshot gitTool tmpDir tmpRepoPath tmpRepository |
  packageName := tokens at: 2.
  commitish := tokens at: 3.
  cypressRepository := self resolveAtPathReference: (tokens at: 4).
  package := CypressPackageDefinition named: packageName.
  packageStructure := CypressPackageStructure fromPackage: package.
  imageSnapshot := packageStructure snapshot.
  gitTool := self topez toolInstanceFor: 'git'.
  tmpRepoPath := '/tmp/tode/merge'.
  tmpRepository := ServerFileDirectory on: tmpRepoPath.
  tmpRepository exists
    ifTrue: [ tmpRepository recursiveDelete ].
  tmpRepository assureExistence.
  gitTool
    performOnServer:
        'cd ' , tmpRepoPath , '; git clone -l -n ' , cypressRepository fullName , ' '
            , tmpRepoPath;
    performGitCommand: 'checkout' in: tmpRepository with: commitish.
  [ 
  versionSnapshot := (cypressRepository
    readPackageStructureForPackageNamed: packageName) snapshot ]
    on: CompileWarning
    do: [ :ex | ex resume ]