as yet unclassified
mccreate
  "mc create <pkg-name>"

  | packageName |
  packageName := tokens at: 2.
  ^ self mccreate: packageName