as yet unclassified
resolveWorkingCopyReference: packageName ifAbsent: absentBlock
  ^ (packageName beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: packageName ]
    ifFalse: [ 
      MCWorkingCopy allManagers
        detect: [ :wc | wc packageName = packageName ]
        ifNone: [ ^ absentBlock value ] ]