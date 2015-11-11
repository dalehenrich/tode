project list
emphasis
  (self isValid and: [ self isConfigProjectValid ])
    ifFalse: [ 
      ^ {(TextEmphasis bold).
      (TextColor red)} ].
  ^ {(TextEmphasis italic).
  (TextEmphasis underlined)}