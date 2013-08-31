as yet unclassified
markWorkingCopyFor: packageName modified: aBool
  (MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [  ]) ifNotNil: [ :wc | wc modified: aBool ]