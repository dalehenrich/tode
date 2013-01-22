as yet unclassified
testKill
  "with GsProcess printing an oop as it's printString, it is difficult to do anything but make sure that the command runs without error"

  | ps result process ensureRun |
  ensureRun := false.
  process := [ 
  [ 
  3 + 4.
  (Delay forSeconds: 1) wait ]
    ensure: [ ensureRun := true ] ] fork.
  Processor yield.
  process suspend.
  ps := self
    topez: self topez
    objIn: nil
    tokens:
      {'kill'.
      (process asOop)}
    windowId: nil.
  self shouldnt: [ result := ps kill ] raise: Error.
  self assert: ensureRun