"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

Smalltalk at: #ConfigurationOfGlass ifPresent: [:cl |
  "Load GLASS1"
  cl project updateProject.
  (Smalltalk at: #GsDeployer) deploy: [ (cl project version: '1.0-beta.9.1') load ].
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
