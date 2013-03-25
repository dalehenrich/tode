as yet unclassified
mcrecompile
  "mc recompile <pkg-name>"

  | workingCopy packageName |
  packageName := tokens at: 2.
  workingCopy := MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [ ^ 'no matching package found' ].
  ^ workingCopy package packageInfo methods
    do: [ :ea | ea actualClass recompile: ea methodSymbol ]