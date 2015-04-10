*tode-client-roassal2
todeRoassalMenuOn: aBuilder
	<todeWorldMenu>
	| sessionDescriptionDir |
	sessionDescriptionDir := self todeSysLocalSessionDescriptionPath asFileReference.
	sessionDescriptionDir exists
		ifTrue: [ 
			(aBuilder item: #'GS Workspace')
				order: 1.0;
				parent: #Roassal;
				target: self;
				icon: Smalltalk ui icons workspaceIcon.
			(sessionDescriptionDir files sorted: [ :a :b | a basename <= b basename ])
				do: [ :file | 
					[ 
					file basename = 'README.md'
						ifFalse: [ 
							| sessionDescription |
							sessionDescription := TDSessionDescription importFrom: file fullName.
							(aBuilder item: sessionDescription name asSymbol)
								parent: #'GS Workspace';
								action: [  ] ] ]
						on: Error
						do: [ :ex | 
							Transcript
								cr;
								show: 'Error importing session description from: ' , file fullName printString , ': ' , ex description.
							^ self ] ] ]