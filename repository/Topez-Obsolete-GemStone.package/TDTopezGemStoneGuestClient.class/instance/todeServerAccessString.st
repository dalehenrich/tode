as yet unclassified
todeServerAccessString
  ^ '((AllUsers userWithId: ''DataCurator'' ifAbsent: [ nil ]) symbolList
  objectNamed: #''TDTopezServer'')'