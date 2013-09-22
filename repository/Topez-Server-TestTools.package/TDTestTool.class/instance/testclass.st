as yet unclassified
testclass
  "test class <class-name> [ <class-name> ... ]"

  | classNames suite cl |
  classNames := tokens copyFrom: 2 to: tokens size.
  suite := TestSuite named: classNames printString , ' tests'.
  classNames
    do: [ :className | 
      cl := Smalltalk classNamed: className.
      (cl inheritsFrom: TestCase)
        ifTrue: [ 
          cl isAbstract
            ifFalse: [ suite addTests: cl suite tests ] ] ].
  ^ self testSuite: suite