as yet unclassified
testproject
  "test project <configuration-base-name>"

  | baseName suite projectSpec |
  baseName := tokens at: 2.
  suite := TestSuite named: baseName , ' tests'.
  projectSpec := Metacello image
    project: baseName;
    list.
  projectSpec version currentlyLoadedClassesInVersion
    do: [ :cl | 
      (cl inheritsFrom: TestCase)
        ifTrue: [ 
          cl isAbstract
            ifFalse: [ suite addTests: cl suite tests ] ] ].
  ^ self testSuite: suite