project list
emphasis
  self isLoadedInImage
    ifTrue: [ ^ super emphasis ].
  ^ {(TextEmphasis italic).
  (TextEmphasis underlined)}