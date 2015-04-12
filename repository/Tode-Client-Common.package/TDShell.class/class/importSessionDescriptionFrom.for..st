system menu
importSessionDescriptionFrom: file for: aBuilder
	| sessionDescription |
	[ sessionDescription := TDSessionDescription importFrom: file fullName ]
		on: Error
		do: [ :ex | 
			Transcript
				cr;
				show: 'Error importing session description from: ' , file fullName printString , ': ' , ex description.
			^ self ].
	(aBuilder item: sessionDescription name asSymbol)
		parent: #'Open Shell';
		action: [ 
					| window |
					window := TDShell openOnSessionDescription: sessionDescription.
					currentShell := window model cliShell ].
	(aBuilder item: sessionDescription name asSymbol)
		parent: #'Project List';
		action: [ 
					| window |
					window := TDShell openOnSessionDescription: sessionDescription.
					currentShell := window model cliShell.
					currentShell ifNil: [ ^ self ].
					currentShell evaluate: 'project list' ].
	(aBuilder item: sessionDescription name asSymbol)
		parent: #'Workspace';
		action: [ 
					| window |
					window := TDShell openOnSessionDescription: sessionDescription.
					currentShell := window model cliShell.
					currentShell ifNil: [ ^ self ].
					currentShell evaluate: 'ws' ].
	(aBuilder item: sessionDescription name asSymbol)
		parent: #'Edit Description';
		action: [ self new openWorkspace: sessionDescription editTemplate styling: true label: sessionDescription name ].
	(aBuilder item: sessionDescription name asSymbol)
		parent: #'Test Login';
		action: [ 
					| answer |
					answer := TDShell testLoginForSessionDescription: sessionDescription.
					self new openWorkspace: answer label: 'testLogin: ' , sessionDescription name ]