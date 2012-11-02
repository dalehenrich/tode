*topez-common-core
stringForAttributes: type
    "Private.
	Answer the String that prefixes text of the given type."

    type = #'insert'
        ifTrue: [ ^ '+ ' ].
    type = #'remove'
        ifTrue: [ ^ '- ' ].
    ^ '  '