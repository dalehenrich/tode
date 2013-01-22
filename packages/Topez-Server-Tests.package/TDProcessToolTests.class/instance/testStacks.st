as yet unclassified
testStacks
  "with GsProcess printing an oop as it's printString, it is difficult to do anything but make sure that the command runs without error"

  | ps result |
  ps := self
    topez: self topez
    objIn: nil
    tokens: #('stacks')
    windowId: nil.
  self shouldnt: [ result := ps stacks ] raise: Error