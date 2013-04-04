"Load and run tests to be performed by TravisCI"
| gitPath |
Transcript cr; show: 'travis---->travisCI.st'.
gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"Load the Topez Tests ... "
Metacello new
	baseline: 'Topez';
  repository: 'filetree://', gitPath, '/topez/repository';
  load: 'Dev'.

"Run the Topez tests"
TravisCIHarness
  value: #( 'BaselineOfTopez' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
