as yet unclassified
tsrun
  "ts run [errors|failures| passed|expectedDefects|unexpectedPassed]
      run <test-spec>
      run @<method-path>
  "

  | arg testSpec cls selector |
  arg := tokens at: 2.
  (arg beginsWith: '@')
    ifTrue: [ 
      | methodOrClass |
      methodOrClass := self self resolveAtPathReference: arg.
      methodOrClass isBehavior
        ifTrue: [ ^ self runTestClass: cls ].
      cls := methodOrClass inClass.
      selector := methodOrClass selector ]
    ifFalse: [ 
      (#('errors' 'failures' 'passed' 'expectedDefects' 'unexpectedPassed')
        includes: arg)
        ifTrue: [ ^ self runTestSet: arg ].
      testSpec := arg findTokens: '>>'.
      cls := Smalltalk at: (testSpec at: 1) asSymbol.
      testSpec size = 1
        ifTrue: [ 
          "just a class name"
          ^ self runTestClass: cls ].
      selector := testSpec at: 2.
      (selector at: 1) = $#
        ifTrue: [ selector := selector copyFrom: 2 to: selector size ] ].
  ^ cls debug: selector asSymbol