as yet unclassified
printSenderString
  | ws str |
  str := String new.
  ws := PrintStream printingOn: str.
  self printSenderOn: ws.
  ^ ws _collection