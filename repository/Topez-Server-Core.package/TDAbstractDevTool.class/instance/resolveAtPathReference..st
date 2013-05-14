as yet unclassified
resolveAtPathReference: atPathRef
  | path |
  path := atPathRef copyFrom: 2 to: atPathRef size.
  ^ (topez lookup: path) dotSelfObject