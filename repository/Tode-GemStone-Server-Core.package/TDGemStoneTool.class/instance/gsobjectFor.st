as yet unclassified
gsobjectFor
  "gs objectFor <object-oop>"

  | oop |
  oop := (tokens at: 2) asNumber.
  ^ Object _objectForOop: oop