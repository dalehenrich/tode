private
runTestBlockReturnStack: aBlock
  | sem sem2 process exception |
  true
    ifTrue: [ "bring up real debugger on the block"
      [ ^ aBlock value ] value ].
  sem := TransientSemaphore new.
  sem2 := TransientSemaphore new.
  process := [ aBlock
    on: Halt , Error
    do: [ :ex | exception := ex.
      sem signal.
      sem2 wait ] ] fork.
  sem wait.
  ^ TransientValue value: (TDStack new
        process: process;
        exception: exception;
        createFrames;
        yourself)