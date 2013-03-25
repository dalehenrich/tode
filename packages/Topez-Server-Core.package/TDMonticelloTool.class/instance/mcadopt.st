as yet unclassified
mcadopt
  "mc adopt <pkg-name> <version-name> <repository-spec>"

  | packageName versionName repoSpec version wc |
  packageName := tokens at: 2.
  versionName := tokens at: 3.
  repoSpec := tokens at: 4.
  version := self versionFor: versionName in: repoSpec.
  wc := MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [ ^ 'No package named ' , packageName printString , ' found.' ].
  ^ wc adopt: version