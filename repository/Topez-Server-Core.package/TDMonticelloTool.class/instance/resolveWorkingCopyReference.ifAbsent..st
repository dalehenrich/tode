as yet unclassified
resolveWorkingCopyReference: packageName ifAbsent: absentBlock
  ^ (packageName beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: packageName ]
    ifFalse: [ 
      | basePackageName |
      basePackageName := packageName.
      (packageName includes: $.)
        ifTrue: [ basePackageName := packageName copyUpTo: $. ].
      MCWorkingCopy allManagers
        detect: [ :wc | wc packageName = basePackageName ]
        ifNone: [ ^ absentBlock value ] ]