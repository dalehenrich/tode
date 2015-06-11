as yet unclassified
printSampleString: sortKey
  | ws str |
  str := String new.
  ws := PrintStream printingOn: str.
  self printSampleOn: ws sortKey: sortKey.
  ^ ws _collection