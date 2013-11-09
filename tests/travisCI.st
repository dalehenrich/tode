"Load and run tests to be performed by TravisCI"
| gitCache gitPath |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Smalltalk at: #ConfigurationOfGLASS ifPresent: [:cl |
  "Load GLASS1"
  Metacello new
    baseline: 'GLASS1';
    repository: 'github://glassdb/glass:master/repository';
    onConflict: [ :ex | ex allow ];
    onWarning: [ :ex |
        Transcript
          cr;
          show: ex description.
        ex resume ];
    load: 'default' ].

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
