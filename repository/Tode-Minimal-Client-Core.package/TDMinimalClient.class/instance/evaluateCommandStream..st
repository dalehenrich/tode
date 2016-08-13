commands
evaluateCommandStream: aStream
	[ | result |
	TDCommandLine
		fromStream: aStream
		forEachCommand: [ :command | result := self evaluateCommand: command ].
	^ result ]
		on: Error , TDCommandErrorNotification
		do: [ :ex | 
			| errorMessage |
			self debugMode
				ifTrue: [ ex pass ].
			errorMessage := 'tODE ERROR: ' asText
				,
					(Text
						string: ex description
						attributes:
							{TextColor red.
							TextEmphasis bold}).
			^ errorMessage ]