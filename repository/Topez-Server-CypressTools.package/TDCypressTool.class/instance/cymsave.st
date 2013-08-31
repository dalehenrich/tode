as yet unclassified
cymsave
  "cym save <config> @<cypress-repo>"

  | configName cypressRepository registration projectSpec |
  configName := tokens at: 2.
  cypressRepository := self resolveAtPathReference: (tokens at: 3).
  ^ self cymSave: configName to: cypressRepository