private
readArguments
  | argsSize ofs |
  argsSize := self argsSize.
  args := Array new: argsSize.
  ofs := self argsOffset.
  1 to: argsSize do: [ :i | 
    args at: i put: (library localFor: (self oopTypeAt: ofs)).
    ofs := ofs + 8 ]