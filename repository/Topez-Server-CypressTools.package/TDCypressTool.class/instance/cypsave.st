as yet unclassified
cypsave
  "cyp save <pkg-name> @<cypress-repository-path>"

  | packageName cypressRepository |
  packageName := tokens at: 2.
  cypressRepository := self resolveAtPathReference: (tokens at: 3).
  ^ self cypSave: packageName to: cypressRepository