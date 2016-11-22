private
runTestBlockReturnStack: aBlock
  | sem sem2 process exception |
  sem := TransientSemaphore new.
  sem2 := TransientSemaphore new.
  process := [ aBlock
    on: Halt
    do: [ :ex | exception := ex.
      sem signal.
      sem2 wait ] ] fork.
  sem wait.
  ^ TDStack new
    process: process;
    exception: exception;
    createFrames;
    yourself