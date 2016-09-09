private
trimToHomeFrame
  "Assume to be sent after successful accept of new version of method"

  | homeMethodOop homeFrame |
  homeMethodOop := self homeMethodOop.
  homeFrame := self
    findFrameSuchThat: [ :frame | frame methodOop == homeMethodOop ].
  self stack trimStackTo: homeFrame frameIndex