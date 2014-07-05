"Load and run tests to be performed by TravisCI"
| gitCache gitPath |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Smalltalk at: #ConfigurationOfGLASS ifPresent: [:cls |
  "Upgrade to GLASS 1.0-beta.9.3"
  GsDeployer deploy: [
    | glassVersion |
    Gofer new
      package: 'ConfigurationOfGLASS';
      url: 'http://seaside.gemtalksystems.com/ss/MetacelloRepository';
      load.
    glassVersion := cls project currentVersion.
    ((((Smalltalk at: #System) stoneVersionAt: 'gsVersion') beginsWith: '2.') and: [glassVersion versionNumber < '1.0-beta.9.2' asMetacelloVersionNumber])
      ifTrue: [ (cls project version: '1.0-beta.9.2') load ].
    (cls project version: '1.0-beta.9.3') load ] ].

"Load Tode ... "
Metacello new
  baseline: 'Tode';
  repository: 'filetree://', gitPath, '/tode/repository';
  load: 'GemStone Dev'.

"Run the Tode tests"
TravisCIHarness
  value: #( 'BaselineOfTode' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
