as yet unclassified
homeFrame
  | homeMethod |
  homeMethod := self homeMethod.
  ^ self findFrameSuchThat: [ :frame | frame method == homeMethod ]