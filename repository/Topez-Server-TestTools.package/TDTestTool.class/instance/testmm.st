as yet unclassified
testmm
  "test mm <configuration-base-name>"

  | baseName suite projectSpec |
  baseName := tokens at: 2.
  suite := TestSuite named: baseName , ' tests'.
  projectSpec := Metacello image
    baseline: baseName;
    list.
  projectSpec version currentlyLoadedClassesInVersion
    do: [ :cl | 
      (cl inheritsFrom: TestCase)
        ifTrue: [ suite addTests: cl suite tests ] ].
  ^ self testSuite: suite