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
			(aBuilder item: #'tODE Edit')
				parent: #tODE;
				order: 1.5;
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
					file basename = 'README.md'
						ifFalse: [ self importSessionDescriptionFrom: file for: aBuilder ] ] ]