project list
emphasis
  | attributes |
  attributes := {(TextEmphasis normal)}.
  self isActive
    ifTrue: [ attributes add: TextEmphasis bold ].
  self hasVersionSkew | self isConfigProjectValid not
    ifTrue: [ attributes add: TextColor red ].
  ^ attributes