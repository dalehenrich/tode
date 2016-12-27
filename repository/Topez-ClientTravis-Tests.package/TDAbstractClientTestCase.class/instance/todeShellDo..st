private
todeShellDo: aBlock
	| shell |
	shell := TDShell new
		sessionDescription: self sessionDescription;
		batchMode: true;
		yourself.
	[ aBlock value: shell ]
		ensure: [ shell logout ]