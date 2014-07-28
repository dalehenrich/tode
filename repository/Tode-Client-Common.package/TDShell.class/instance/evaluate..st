evaluator engine
evaluate: aString
	[ 
	| line stream result |
	stream := aString readStream.
	[ 
	line := stream nextLine.
	line ~~ nil ]
		whileTrue: [ 
			self actionStack notEmpty
				ifTrue: [ result := self accumulateText: line ]
				ifFalse: [ 
					self addToHistory: line.
					TDCommandLine line: line forEachCommand: [ :command | result := self evaluateCommand: command ] ] ].
	^ result ]
		on: Error , TDRestoreFromBackupComplete , GsTopezCommandErrorNotification
		do: [ :ex | 
			((ex isKindOf: GsTopezCommandErrorNotification) or: [ ex isKindOf: Error ])
				ifTrue: [ 
					| errorMessage |
					self debugMode
						ifTrue: [ ex pass ].
					errorMessage := 'Topez ERROR: ' asText
						,
							(Text
								string: ex description
								attributes:
									{(TextColor red).
									(TextEmphasis bold)}).
					self resetStack.
					^ errorMessage ].
			self logout.	"TDRestoreFromBackupComplete - logout and return restore message"
			^ ex description ]