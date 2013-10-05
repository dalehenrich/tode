as yet unclassified
printParentString
  | ws str |
  str := String new.
  ws := PrintStream printingOn: str.
  self printParentOn: ws.
  ^ ws _collection