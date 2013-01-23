as yet unclassified
testKill
  "with GsProcess printing an oop as it's printString, it is difficult to do anything but make sure that the command runs without error"

  | ps result process ensureRun sem |
  ensureRun := false.
  sem := Semaphore new.
  process := [ 
  [ 
  3 + 4.
  sem wait ]
    ensure: [ ensureRun := true ] ] fork.
  Processor yield.
  ps := self processToolClass
    topez: self topez
    objIn: nil
    tokens:
      {'kill'.
      (process asOop)}
    windowId: nil.
  doPsTerminate
    ifTrue: [ 
      self shouldnt: [ result := ps kill ] raise: Error.
      self assert: ensureRun ]
    ifFalse: [ 
      doProcessTerminate
        ifTrue: [ 
          GsFile gciLogServer: 'TDProcessToolTests>>testKill: ' , process asOop printString.
          process terminate ] ]