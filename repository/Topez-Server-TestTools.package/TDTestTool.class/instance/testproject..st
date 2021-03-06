as yet unclassified
testproject: baseName
  ^ self
    doTestForBlock: [ 
      | suite projectSpec result |
      suite := TestSuite named: baseName , ' tests'.
      result := Metacello image
        project: baseName;
        list.
      projectSpec := result isCollection
        ifTrue: [ result first ]
        ifFalse: [ 
          "old-style result from `list` command ... safe to remove after MetacelloPreview1.0.0-beta.32.15 is wide distribution"
          result ].
      projectSpec version currentlyLoadedClassesInVersion
        do: [ :cl | 
          (cl inheritsFrom: TestCase)
            ifTrue: [ 
              cl isAbstract
                ifFalse: [ suite addTests: cl suite tests ] ] ].
      suite ]
    label: baseName , ' tests'