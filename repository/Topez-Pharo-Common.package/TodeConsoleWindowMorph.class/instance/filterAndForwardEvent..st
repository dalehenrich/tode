as yet unclassified
filterAndForwardEvent: event
	| ans |
	(ans := self model filterAndForwardEvent: event) ifNil: [ ^ nil ].
	event keyCharacter = Character tab
		ifTrue: [ 
			| matches strm cmdLine tabCompletion prefix postfix longestMatch |
			cmdLine := self commandLineInput.
			tabCompletion := self model tabCompletion: cmdLine.
			prefix := tabCompletion at: 1.
			matches := tabCompletion at: 2.
			postfix := tabCompletion at: 3.
			longestMatch := tabCompletion at: 4.
			matches size = 0
				ifTrue: [ ^ nil ].
			matches size = 1
				ifTrue: [ 
					self selectFrom: self positionAfterPromptString to: self text size.
					textMorph replaceSelectionWith: longestMatch.
					self selectFrom: self text size + 1 to: self text size.
					^ nil ].
			self selectFrom: self text size + 1 to: self text size.
			self model cr.
			strm := WriteStream on: String new.
			matches
				do: [ :match | 
					strm
						nextPutAll: match;
						space;
						tab ].
			strm lf.
			textMorph replaceSelectionWith: strm contents.
			self selectFrom: self text size + 1 to: self text size.
			self model
				prompt;
				show: longestMatch.
			self selectFrom: self text size + 1 to: self text size.
			^ nil ].
	^ ans