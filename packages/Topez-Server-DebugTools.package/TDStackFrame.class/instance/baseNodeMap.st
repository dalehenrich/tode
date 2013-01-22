as yet unclassified
baseNodeMap
  | map |
  map := Dictionary new.
  map
    add: 'method' -> #'method';
    add: 'receiver' -> #'receiver';
    yourself.
  self isMethodForBlock
    ifTrue: [ map add: 'home' -> #'homeMethod' ].
  ^ map