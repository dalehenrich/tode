accessing
methodSpec
  "return method spec or nil. method spec in form of class>>selector."

  | cls meta selector ar |
  ar := self conflict localDefinition description.
  meta := ''.
  (ar at: 3)
    ifTrue: [ meta := ' class' ].
  ^ (ar at: 1) , meta , '>>' , (ar at: 2) asString