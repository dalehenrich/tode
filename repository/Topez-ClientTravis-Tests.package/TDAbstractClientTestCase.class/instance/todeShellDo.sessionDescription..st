private
todeShellDo: aBlock sessionDescription: sessionDescription
	| shell |
	shell := TDShell new
		sessionDescription: sessionDescription;
		batchMode: true;
		yourself.
	[ aBlock value: shell ]
		ensure: [ shell logout ]