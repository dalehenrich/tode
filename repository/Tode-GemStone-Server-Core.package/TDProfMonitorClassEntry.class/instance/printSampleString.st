reporting
printSampleString
  | ws str |
  str := String new.
  ws := PrintStream printingOn: str.
  self printSampleOn: ws.
  ^ ws _collection