as yet unclassified
executeWindowBuilderSpecs: windowBuilderSpecs
  "object aspect windowId expected [ block ]"

  | results |
  results := Array new.
  windowBuilderSpecs
    do: [ :ar | 
      | object expected actual node aspect clientElement windowId block answer found |
      object := ar at: 1.
      aspect := ar at: 2.
      windowId := ar at: 3.
      expected := ar at: 4.
      ar size == 5
        ifTrue: [ block := ar at: 5 ]
        ifFalse: [ block := [ :nde | self dsDisplayFor: nde level: 1 ] ].
      found := false.
      self topez
        editorNodeFor: object
        aspect: aspect
        do: [ :windowBuilder :finalAspect | 
          clientElement := windowBuilder
            buildClientElementUsing:
              ((TDEditorSpec topez: self topez)
                windowId: windowId;
                yourself)
            editorAspect: finalAspect.
          node := clientElement first
            asTDObjectNode: nil
            topez: self topez
            aspect: #'view'.
          actual := block value: node.
          found := true ].
      false
        ifTrue: [ self assert: actual = expected ].
      results
        add:
          {actual.
          expected.
          (actual printString)}.
      self assert: found ].
  results
    do: [ :ar | 
      | actual expected actualPrintString |
      actual := ar at: 1.
      expected := ar at: 2.
      actualPrintString := ar at: 3.
      actual = expected
        ifFalse: [ 
          Transcript
            cr;
            show: 'ACTUAL';
            cr;
            show: actual;
            cr;
            show: 'EXPECTED';
            cr;
            show: expected ].
      self assert: actual = expected ]