printing
basicPrintString
    | stream |
    stream := WriteStream on: String new.
    self basicPrintOn: stream indent: 0.
    ^ stream contents