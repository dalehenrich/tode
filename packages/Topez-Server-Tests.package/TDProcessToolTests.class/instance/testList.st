as yet unclassified
testList
  "with GsProcess printing an oop as it's printString, it is difficult to do anything but make sure that the command runs without error"

  | ps result |
  ps := self processToolClass
    topez: self topez
    objIn: nil
    tokens: #('list')
    windowId: nil.
  self shouldnt: [ result := ps list ] raise: Error.
  ps := self processToolClass
    topez: self topez
    objIn: nil
    tokens: #('list' '3')
    windowId: nil.
  self shouldnt: [ result := ps list ] raise: Error