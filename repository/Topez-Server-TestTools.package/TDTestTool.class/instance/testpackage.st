as yet unclassified
testpackage
  "test package <package-name>"

  | packageName suite wc classes |
  packageName := tokens at: 2.
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
  ^ self testSuite: suite