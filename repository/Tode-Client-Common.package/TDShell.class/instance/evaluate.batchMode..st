evaluator engine
evaluate: aString batchMode: aBool
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
		forEachCommand: [ :command | result := self evaluateCommand: command batchMode: aBool ].
	^ result ]
		on: Error , TDRestoreFromBackupComplete , GsTopezCommandErrorNotification
		do: [ :ex | 
			| message |
			(ex isKindOf: GciSessionNotLoggedInError)
				ifTrue: [ 
					"attempt an automatic re-login, if session is lost"
					self debugMode
						ifTrue: [ ex pass ].
					message := (Text
						string: ex description
						attributes:
							{(TextColor red).
							(TextEmphasis bold)}) , String lf
						,
							('Check the gem log for error messages (look at the most recent gem log file: `ls $GS_HOME/server/stones/'
								, self stoneName , '/logs/gemnetobject*.log`.' , String lf
								, 'If your stone is running and healthy (`cat $GS_HOME/server/stones/' , self stoneName , '/logs/'
								, self stoneName , '.log`), you can try again.') asText allBold.
					self resetStack.
					self logout.
					^ message ].
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