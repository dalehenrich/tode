project list
emphasis
  | attributes |
  attributes := {(TextEmphasis normal)}.
  (self extension status includes: #'active')
    ifTrue: [ attributes add: TextEmphasis bold ].
  ^ attributes