export
prettyPrint: aString 
	"Replace _ with := unless it is preceded with $ or a single quote"
	| previousChar withinQuotes withinComments |
	previousChar := nil.
	withinQuotes := false.
	withinComments := false.
	^String
				streamContents: [:s | aString
						do: [:c | c = $" & withinQuotes not
								ifTrue: [withinComments := withinComments not.
									s nextPut: c.
									previousChar := nil]
								ifFalse: [c = $' & withinComments not
										ifTrue: [withinQuotes := withinQuotes not.
											s nextPut: c.
											previousChar := nil]
										ifFalse: [(c = $_
													and: [withinQuotes not
															and: [withinComments not
																	and: [(#($$ $' ) includes: previousChar) not]]])
												ifTrue: [s nextPutAll: ':=']
												ifFalse: [s nextPut: c].
											previousChar := c]]]].
		
