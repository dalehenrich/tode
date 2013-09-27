as yet unclassified
testproject
  "test project <configuration-base-name>"

  | baseName |
  baseName := tokens at: 2.
  ^ self testproject: baseName