as yet unclassified
testclass: classNames
  "test class <class-name> [ <class-name> ... ]"

  | suite cl |
  suite := TestSuite named: classNames printString , ' tests'.
  classNames
    do: [ :className | 
      cl := Smalltalk classNamed: className.
      (cl inheritsFrom: TestCase)
        ifTrue: [ 
          cl isAbstract
            ifFalse: [ suite addTests: cl suite tests ] ] ].
  ^ self testsuite: suite