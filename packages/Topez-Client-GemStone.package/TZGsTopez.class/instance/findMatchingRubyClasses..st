as yet unclassified
findMatchingRubyClasses: aString
	^ self
		doInSession: [ :sess | 
			sess
				receiverNB: self currentEngine
				performNoDebug: 'findMatchingRubyClasses:level:'
				withArgs:
					{aString.
					2} ]