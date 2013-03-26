as yet unclassified
mcdelete
  "mc delete <pkg-name>"

  | packageName wc |
  packageName := tokens at: 2.
  wc := MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [ ^ 'No working copy named' , packageName printString , ' found.' ].
  ^ wc unregister