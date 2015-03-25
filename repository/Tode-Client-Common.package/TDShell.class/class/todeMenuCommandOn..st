system menu
todeMenuCommandOn: aBuilder
	<todeWorldMenu>
	| sessionDescriptionDir |
	sessionDescriptionDir := self todeSysLocalSessionDescriptionPath asFileReference.
	sessionDescriptionDir exists
		ifTrue: [ 
			(aBuilder item: #'Open Shell')
				order: 1.0;
				target: self;
				icon: Smalltalk ui icons scriptManagerIcon;
				enabled: currentShell isNil.
			(aBuilder item: #'Open Project List')
				parent: #'Open Tool';
				order: 1.0;
				target: self;
				icon: Smalltalk ui icons configIcon;
				enabled: currentShell isNil.
			(aBuilder item: #'Open Workspace')
				parent: #'Open Tool';
				order: 2.0;
				target: self;
				icon: Smalltalk ui icons workspaceIcon;
				enabled: currentShell isNil.
			(aBuilder item: #'Test Login')
				parent: #DevKit;
				order: 1;
				enabled: currentShell isNil;
				target: self;
				icon: Smalltalk ui icons smallOkIcon;
				withSeparatorAfter.
			(aBuilder item: #'Edit Description')
				parent: #Client;
				order: 1.2;
				target: self;
				withSeparatorAfter.
			(sessionDescriptionDir files sorted: [ :a :b | a basename <= b basename ])
				do: [ :file | 
					file basename = 'README.md'
						ifFalse: [ self importSessionDescriptionFrom: file for: aBuilder ] ] ]