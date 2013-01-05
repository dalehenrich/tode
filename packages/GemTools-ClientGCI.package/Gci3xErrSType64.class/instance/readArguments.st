private
readArguments
  | argsSize ofs |
  argsSize := self unsignedLongAt: 109.
  args := Array new: argsSize.
  10 < argsSize
    ifTrue: [ self error: 'Argument count too high!' ].
  ofs := 25.
  Transcript
    cr;
    show: 'GciErrSType64>>readArguments: ' , argsSize printString.
  self halt.
  1 to: argsSize do: [ :i | 
    args at: i put: (library localFor: (self oopTypeAt: ofs)).
    ofs := ofs + 8 ]