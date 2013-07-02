as yet unclassified
reconcile
  "reconcile <configuration> <version> <repository>"

  | configurationClass versionString repo baseName |
  baseName := tokens at: 2.
  configurationClass := Smalltalk at: ('ConfigurationOf' , baseName) asSymbol.
  versionString := tokens at: 3.
  repo := self metacelloRepo: (tokens at: 4).
  ^ self reconcile: configurationClass version: versionString repo: repo