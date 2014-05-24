system menu
todeMenuCommandOn: aBuilder
	<worldMenu>
	| sessionDescriptionDir |
	sessionDescriptionDir := self sessionDescriptionHome asFileReference.
	sessionDescriptionDir exists
		ifTrue: [ 
			(aBuilder item: #'tODE Shell')
				parent: #tODE;
				order: 1.0;
				target: self;
				withSeparatorAfter.
			(aBuilder item: #'tODE Test Login')
				parent: #tODE;
				order: 2.0;
				target: self.
			(aBuilder item: #'tODE Install')
				parent: #tODE;
				order: 3.0;
				target: self.
			(aBuilder item: #'tODE Update')
				parent: #tODE;
				order: 4.0;
				target: self;
				withSeparatorAfter.
			(sessionDescriptionDir files sorted: [ :a :b | a fullName <= b fullName ])
				do: [ :file | 
					| sessionDescription |
					sessionDescription := OGCustomSessionDescription importFrom: file fullName.
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
						action: [ self openSessionDescription: sessionDescription evaluate: 'script --script=updateTode' ] ] ]