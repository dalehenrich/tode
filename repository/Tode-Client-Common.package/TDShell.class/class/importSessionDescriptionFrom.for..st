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
		parent: #'tODE Shell';
		action: [ TDShell openOnSessionDescription: sessionDescription ].
	(aBuilder item: sessionDescription name asSymbol)
		parent: #'tODE Test Login';
		action: [ 
					| answer |
					answer := TDShell testLoginForSessionDescription: sessionDescription.
					self new openWorkspace: answer label: 'tODE testLogin: ' , sessionDescription name ].
	(aBuilder item: sessionDescription name asSymbol)
		parent: #'tODE Install';
		action: [ self openSessionDescription: sessionDescription evaluate: 'script --script=installTode' ].
	(aBuilder item: sessionDescription name asSymbol)
		parent: #'tODE Update';
		action: [ self openSessionDescription: sessionDescription evaluate: 'script --script=updateTode' ]