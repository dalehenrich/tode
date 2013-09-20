as yet unclassified
testclass
  "test class <class-name>"

  | className suite cl |
  className := tokens at: 2.
  suite := TestSuite named: className , ' tests'.
  cl := Smalltalk classNamed: className.
  (cl inheritsFrom: TestCase)
    ifTrue: [ 
      cl isAbstract
        ifFalse: [ suite addTests: cl suite tests ] ].
  ^ self testSuite: suite