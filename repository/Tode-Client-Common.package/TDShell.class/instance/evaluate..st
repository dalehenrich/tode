evaluator engine
evaluate: aString
	[ 
	| result |
	TDCommandLine
		fromStream: aString readStream
		selectLine: [ :line | 
			self actionStack notEmpty
				ifTrue: [ 
					result := self accumulateText: line.
					false	"do not create or evaluate command for this line" ]
				ifFalse: [ 
					self addToHistory: line.
					true	"create and evaluate the command for this line" ] ]
		forEachCommand: [ :command | result := self evaluateCommand: command ].
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