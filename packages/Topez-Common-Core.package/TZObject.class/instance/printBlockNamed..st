printing
printBlockNamed: printBlockName
    | stream |
    stream := WriteStream on: String new.
    self printBlockNamed: printBlockName on: stream indent: 0.
    ^ stream contents