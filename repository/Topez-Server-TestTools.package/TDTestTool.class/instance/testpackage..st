as yet unclassified
testpackage: packageName
  | suite wc classes |
  suite := TestSuite named: packageName , ' tests'.
  wc := MCWorkingCopy allManagers
    detect: [ :wc | wc packageName = packageName ]
    ifNone: [ self error: 'No package named ' , packageName printString ].
  classes := (MetacelloPlatform current packageInfoFor: wc) classes.
  classes
    do: [ :cl | 
      (cl inheritsFrom: TestCase)
        ifTrue: [ 
          cl isAbstract
            ifFalse: [ suite addTests: cl suite tests ] ] ].
  ^ self doTestFor: suite