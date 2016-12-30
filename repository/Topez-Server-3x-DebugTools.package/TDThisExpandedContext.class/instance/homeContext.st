synthetic fields
homeContext
  | homeMethod |
  parentFrame next ifNil: [ ^ nil ].
  homeMethod := self homeMethod.
  ^ parentFrame next
    findFrameSuchThat: [ :frame | frame gsMethod == homeMethod ]