as yet unclassified
xtestTerminate
  | process sem |
  sem := Semaphore new.
  process := [ 
  3 + 4.
  sem wait ] fork.
  Processor yield.
  self
    executeCommandSpecs:
      {{{'terminate'.
      (process asOop)}.
      #'terminate'.
      nil}}