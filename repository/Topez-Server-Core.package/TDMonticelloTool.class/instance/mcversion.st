as yet unclassified
mcversion
  "mc version <pkg-name>"

  | packageName |
  packageName := tokens at: 2.
  ^ self mcversion: packageName