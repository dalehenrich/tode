as yet unclassified
process
  | ps result process ensureRun sem |
  ensureRun := false.
  sem := Semaphore new.
  process := [ 
  [ 
  3 + 4.
  sem wait ]
    ensure: [ ensureRun := true ] ] fork.
  Processor yield.
  ^ process