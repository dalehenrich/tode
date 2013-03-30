as yet unclassified
trimToHomeFrame
  | home homeFrame |
  home := self homeMethod.
  homeFrame := self findFrameSuchThat: [ :frame | frame method == home ].
  self stack trimStackTo: homeFrame frameIndex