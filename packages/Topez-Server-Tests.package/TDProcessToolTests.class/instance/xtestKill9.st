as yet unclassified
xtestKill9
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
      {{{'kill9'.
      (process asOop)}.
      #'kill9'.
      nil}}.
  self assert: ensureRun