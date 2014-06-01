system menu
todeImageWorkspacesOn: aBuilder
	<worldMenu>
	| workspaceDir |
	workspaceDir := self imageWorkspaceHome asFileReference.
	workspaceDir exists
		ifTrue: [ 
			(aBuilder item: #'tODE Workspaces')
				parent: #tODE;
				order: 4.5;
				target: self.
			(workspaceDir files sorted: [ :a :b | a fullName <= b fullName ])
				do: [ :file | 
					(aBuilder item: file basename asSymbol)
						parent: #'tODE Workspaces';
						action: [ 
									| contents |
									FileStream readOnlyFileNamed: file fullName do: [ :fileStream | contents := fileStream contents ].
									self new openWorkspace: contents styling: true label: file basename ] ] ]