as yet unclassified
resolveWorkingCopyReference: packageName
  ^ (packageName beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: packageName ]
    ifFalse: [ 
      MCWorkingCopy allManagers
        detect: [ :wc | wc packageName = packageName ]
        ifNone: [ ^ 'No package named ' , packageName printString , ' found.' ] ]