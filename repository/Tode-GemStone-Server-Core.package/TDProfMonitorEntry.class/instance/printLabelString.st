as yet unclassified
printLabelString
  | ws str |
  str := String new.
  ws := PrintStream printingOn: str.
  self printLabelOn: ws.
  ^ ws _collection