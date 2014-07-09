as yet unclassified
browseRegistrationTests: aProjectRegistration
  | suite |
  suite := TestSuite named: aProjectRegistration projectName , ' tests'.
  aProjectRegistration classDefinitions
    do: [ :classDefinition | 
      | cl |
      cl := classDefinition theClass.
      (cl inheritsFrom: TestCase)
        ifTrue: [ 
          cl isAbstract
            ifFalse: [ suite addTests: cl suite tests ] ] ].
  ^ self browseTestSuite: suite