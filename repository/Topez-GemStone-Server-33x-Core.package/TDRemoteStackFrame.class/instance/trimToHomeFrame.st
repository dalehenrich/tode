private
trimToHomeFrame
  "Assume to be sent after successful accept of new version of method"

  | home homeFrame |
  home := self homeMethod.
  homeFrame := self findFrameSuchThat: [ :frame | frame method == home ].
  self stack trimStackTo: homeFrame frameIndex