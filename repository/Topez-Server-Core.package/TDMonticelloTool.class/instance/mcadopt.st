as yet unclassified
mcadopt
  "mc adopt <pkg-name> <version-name> <repository-spec>
      adopt @<workingCopy-path> @<version-path>
      adopt <pkg-name> @<version-path>
      adopt @<workingCopy-path> <version-name> <repository-spec>
  "

  | packageName versionName repoSpec version wc |
  packageName := tokens at: 2.
  wc := self resolveWorkingCopyReference: packageName.
  versionName := tokens at: 3.
  version := (versionName beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: versionName ]
    ifFalse: [ 
      repoSpec := tokens at: 4.
      self versionFor: versionName in: repoSpec ].
  ^ wc adopt: version