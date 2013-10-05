as yet unclassified
tslist: sections openEditor: openEditor
  | testNode methods |
  testNode := self topez lookup: self defaultHomeTestPath.
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
  openEditor
    ifTrue: [ 
      methods
        editUsing:
          ((TDEditorSpec topez: topez editorAspect: #'methodDefinitionList')
            windowLocation: #'implementors';
            windowName: #'testCases';
            yourself) ].
  ^ methods