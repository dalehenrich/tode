synthetic fields
homeContext
  | homeMethod |
  self next ifNil: [ ^ nil ].
  homeMethod := self homeMethod.
  ^ self next findFrameSuchThat: [ :frame | frame gsMethod == homeMethod ]