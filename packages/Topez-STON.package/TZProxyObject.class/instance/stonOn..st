storing
stonOn: stonWriter

	stonWriter
		writeObject: self
		streamMap: [ :dictionary | 
			stonWriter noProxy: true.
			dictionary at: #'header' put: self header.
			stonWriter incrementObjectLimit.
			stonWriter levelLimitExceeded 
				ifTrue: [ stonWriter noProxy: false ]  
				ifFalse: [
					stonWriter
						nextPut: #'body';
						prettyPrintSpace;
						pairSeparator;
						prettyPrintSpace;
						noProxy: false.
					self body stonOn: stonWriter ].
			stonWriter decrementObjectLimit. ].
   
