as yet unclassified
mchalorm
  "  mc halorm <name> "

  | haloName pattern haloBlock |
  haloName := tokens at: 2.
  self class halos
    removeKey: haloName
    ifAbsent: [ ^ haloName printString , ' not found' ].
  ^ 'removed ' , haloName printString