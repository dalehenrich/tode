| gitPath |
Transcript cr; show: 'travis---->clientGCI.st'.

gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

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
