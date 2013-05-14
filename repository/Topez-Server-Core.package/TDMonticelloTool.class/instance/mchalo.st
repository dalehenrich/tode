as yet unclassified
mchalo
  "  mc halo <name> <regex-pkg-pattern> "

  "NOTE: mc halo should have the results of last mc command plus args from last command to make as many of the relevant objects available as possible"

  "maybe .last will have all the object args and result?"

  | haloName pattern haloBlock |
  haloName := tokens at: 2.
  pattern := tokens at: 3.
  haloBlock := [ :aTopez | self class workingCopiesNode: (self findMatchingPackages: pattern topez: aTopez) ].
  self class halos at: haloName put: haloBlock.
  ^ haloBlock value: self topez