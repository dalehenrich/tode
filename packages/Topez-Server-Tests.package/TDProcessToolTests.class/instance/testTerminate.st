as yet unclassified
testTerminate
  "with GsProcess printing an oop as it's printString, it is difficult to do anything but make sure that the command runs without error"

  | ps result process sem |
  sem := Semaphore new.
  process := [ 
  3 + 4.
  sem wait ] fork.
  Processor yield.
  ps := self processToolClass
    topez: self topez
    objIn: nil
    tokens:
      {'terminate'.
      (process asOop)}
    windowId: nil.
  doPsTerminate
    ifTrue: [ self shouldnt: [ result := ps terminate ] raise: Error ]
    ifFalse: [ 
      doProcessTerminate
        ifTrue: [ 
          GsFile gciLogServer: 'TDProcessToolTests>>testTerminate: ' , process asOop printString.
          process terminate ] ]