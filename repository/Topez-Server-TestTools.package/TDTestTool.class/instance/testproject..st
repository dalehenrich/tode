as yet unclassified
testproject: baseName
  | suite projectSpec |
  suite := TestSuite named: baseName , ' tests'.
  projectSpec := (Metacello image
    project: baseName;
    list) first.
  projectSpec version currentlyLoadedClassesInVersion
    do: [ :cl | 
      (cl inheritsFrom: TestCase)
        ifTrue: [ 
          cl isAbstract
            ifFalse: [ suite addTests: cl suite tests ] ] ].
  ^ self browseTestSuite: suite