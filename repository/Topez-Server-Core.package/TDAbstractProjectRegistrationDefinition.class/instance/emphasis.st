project list
emphasis
  | attributes |
  attributes := {(TextEmphasis normal)}.
  self isActive
    ifTrue: [ attributes add: TextEmphasis bold ].
  ^ attributes