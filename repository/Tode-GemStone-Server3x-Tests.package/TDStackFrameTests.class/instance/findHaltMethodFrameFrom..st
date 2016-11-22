private
findHaltMethodFrameFrom: stack
  | frames haltMethod |
  frames := stack frames.
  haltMethod := self theHaltMethod.
  ^ frames first findFrameSuchThat: [ :frame | frame method == haltMethod ]