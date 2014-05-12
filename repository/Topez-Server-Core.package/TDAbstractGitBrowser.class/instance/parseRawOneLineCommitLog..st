private
parseRawOneLineCommitLog: aString
  | records strm line |
  records := OrderedCollection new.
  strm := ReadStream on: aString.
  line := strm nextLine.
  [ line isEmpty ]
    whileFalse: [ 
      records add: line.
      line := strm nextLine ].
  ^ records