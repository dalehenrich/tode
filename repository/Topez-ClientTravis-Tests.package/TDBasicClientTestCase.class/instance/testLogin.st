tests
testLogin
	| shell |
	shell := TDShell new
		sessionDescription: self sessionDescription;
		batchMode: true;
		yourself.
	[shell evaluate: 'ls' ] ensure: [ shell logout]