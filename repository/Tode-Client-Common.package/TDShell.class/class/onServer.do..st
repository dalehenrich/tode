server blocks
onServer: sessionName do: aBlock
	| shell |
	shell := (Smalltalk at: #TDShell) newOn: sessionName.
	[ shell onServerDo: aBlock ]
		ensure: [ shell windowIsClosing ]