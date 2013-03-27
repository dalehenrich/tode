command input
positionAfterPromptString
  "Answer the index of the first character after the last prompt string in my text. If
	not found, then assume that the contents of the text are all intended to be command
	input."

  | t loc |
  t := self text.
  (1 to: t size - model promptString asString size)
    reverseDo: [ :i | 
      (loc := t findString: model promptString asString startingAt: i) ~= 0
        ifTrue: [ ^ loc + model promptString asString size ] ].
  ^ 1