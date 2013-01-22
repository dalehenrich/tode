as yet unclassified
testTerminate
  "with GsProcess printing an oop as it's printString, it is difficult to do anything but make sure that the command runs without error"

  | ps result process |
  process := [ 
  3 + 4.
  (Delay forSeconds: 1) wait ] fork.
  Processor yield.
  process suspend.
  ps := self processToolClass
    topez: self topez
    objIn: nil
    tokens:
      {'terminate'.
      (process asOop)}
    windowId: nil.
  self shouldnt: [ result := ps terminate ] raise: Error