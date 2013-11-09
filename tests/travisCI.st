"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

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
  load: 'default'.

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
