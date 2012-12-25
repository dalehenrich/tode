as yet unclassified
halo
  "  mc halo <name> <pkg-spec> "

  | haloName pattern haloBlock |
  haloName := tokens at: 2.
  pattern := tokens at: 3.
  haloBlock := [ :aTopez | self class workingCopiesNode: (self findMatchingPackages: pattern topez: aTopez) ].
  self class halos at: haloName put: haloBlock.
  ^ haloBlock value: self topez