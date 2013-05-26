| gitPath |
Transcript cr; show: 'travis---->gemstoneGCI.st'.

gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

"Load Tode ... "
Metacello new
	baseline: 'Tode';
  repository: 'filetree://', gitPath, '/tode/repository';
  load: 'Dev'.

"Run the Tode tests"
TravisCIHarness
  value: #( 'BaselineOfTode' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.