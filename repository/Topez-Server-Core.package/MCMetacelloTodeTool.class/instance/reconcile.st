as yet unclassified
reconcile
  "
  reconcile <configuration> <version> <repository>
            <configuration> <version> @<repo-path>
"

  | configurationClass versionString repo baseName |
  baseName := tokens at: 2.
  configurationClass := Smalltalk at: ('ConfigurationOf' , baseName) asSymbol.
  versionString := tokens at: 3.
  repo := ((tokens at: 4) beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: (tokens at: 4) ]
    ifFalse: [ self metacelloRepo: (tokens at: 4) ].
  ^ self reconcile: configurationClass version: versionString repo: repo