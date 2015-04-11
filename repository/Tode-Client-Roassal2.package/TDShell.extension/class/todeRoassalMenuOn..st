*tode-client-roassal2
todeRoassalMenuOn: aBuilder
	<todeWorldMenu>
	| sessionDescriptionDir |
	sessionDescriptionDir := self todeSysLocalSessionDescriptionPath asFileReference.
	sessionDescriptionDir exists
		ifTrue: [ 
			(aBuilder item: #Roassal)
				order: 1.06;
				target: self;
				icon: RTIcon smallRoassal;
				enabled: currentShell isNil;
				withSeparatorAfter.
			(sessionDescriptionDir files sorted: [ :a :b | a basename <= b basename ])
				do: [ :file | 
					[ 
					file basename = 'README.md'
						ifFalse: [ 
							| sessionDescription |
							sessionDescription := TDSessionDescription importFrom: file fullName.
							(aBuilder item: sessionDescription name asSymbol)
								parent: #Roassal;
								action: [ 
											| bounds window |
											bounds := TDTopezGemStoneClient windowProperties caculateWindowBounds at: #evaluator.
											(window := TDRoassalGsWorkspace openOnSessionDescription: sessionDescription)
												extent: bounds extent;
												position: bounds origin.
											currentShell := window model tdShell ] ] ]
						on: Error
						do: [ :ex | 
							Transcript
								cr;
								show: 'Error importing session description from: ' , file fullName printString , ': ' , ex description.
							^ self ] ] ]