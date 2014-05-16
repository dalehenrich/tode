project list
emphasis
  | attributes |
  attributes := {(TextEmphasis italic)}.
  self isActive
    ifTrue: [ attributes add: TextEmphasis bold ].
  ^ attributes