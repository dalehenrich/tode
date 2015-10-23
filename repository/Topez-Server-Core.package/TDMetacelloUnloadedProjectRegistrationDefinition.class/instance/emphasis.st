project list
emphasis
  self isValid
    ifFalse: [ 
      ^ {(TextEmphasis bold).
      (TextColor red)} ].
  ^ {(TextEmphasis italic).
  (TextEmphasis underlined)}