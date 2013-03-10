as yet unclassified
xtestKill
  | process ensureRun sem |
  ensureRun := false.
  sem := Semaphore new.
  process := [ 
  [ 
  3 + 4.
  sem wait ]
    ensure: [ ensureRun := true ] ] fork.
  Processor yield.
  self
    executeCommandSpecs:
      {{{'kill'.
      (process asOop)}.
      #'kill'.
      nil}}.
  self assert: ensureRun