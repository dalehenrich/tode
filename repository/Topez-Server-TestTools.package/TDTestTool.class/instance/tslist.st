as yet unclassified
tslist
  "ts list [ [errors|failures| passed|expectedDefects|unexpectedPassed] ... ]"

  | testNode sections methods |
  testNode := self topez lookup: self defaultHomeTestPath.
  tokens size = 1
    ifTrue: [ ^ self testSummary: testNode ].
  sections := tokens copyFrom: 2 to: tokens size.
  methods := #().
  sections
    do: [ :section | 
      | results |
      results := (self topez lookup: testNode printString , 'result/' , section)
        dotSelfObject.
      methods := methods
        ,
          (results
            collect: [ :testCase | 
              TDMethodDefinition
                className: testCase class name
                isMeta: false
                selector: testCase selector
                messagePattern: testCase selector asString
                messagePatternIsRegex: false ]) ].
  methods
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'methodDefinitionList')
        windowLocation: #'implementors';
        windowName: #'testCases';
        yourself).
  ^ methods