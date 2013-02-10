*topez-common-core
stringForAttributes: type
  "Private.
	Answer the String that prefixes text of the given type."

  type = #'insert'
    ifTrue: [ ^ Text string: '+ ' attribute: TextColor blue ].
  type = #'remove'
    ifTrue: [ ^ Text string: '- ' attribute: TextColor red ].
  ^ '  '