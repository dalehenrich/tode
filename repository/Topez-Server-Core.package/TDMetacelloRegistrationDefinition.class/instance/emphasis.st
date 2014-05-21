project list
emphasis
  self isLoadedInImage
    ifTrue: [ 
      self hasVersionSkew
        ifTrue: [ ^ super emphasis , {(TextColor red)} ].
      ^ super emphasis ].
  ^ {(TextEmphasis italic).
  (TextEmphasis underlined)}