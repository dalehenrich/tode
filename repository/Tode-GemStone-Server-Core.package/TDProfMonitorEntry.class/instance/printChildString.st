as yet unclassified
printChildString
  | ws str |
  str := String new.
  ws := PrintStream printingOn: str.
  self printChildOn: ws.
  ^ ws _collection