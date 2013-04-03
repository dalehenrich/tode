*topez-common-core
textAttributesForAttributes: type
  "Private.
	Answer the String that prefixes text of the given type."

  type = #'insert'
    ifTrue: [ ^ {(TextColor blue)} ].
  type = #'remove'
    ifTrue: [ ^ {(TextColor red)} ].
  ^ #()