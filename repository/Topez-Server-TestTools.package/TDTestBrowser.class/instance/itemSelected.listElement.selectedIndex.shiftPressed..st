tools
itemSelected: miniTool listElement: listElement selectedIndex: selectionIndex shiftPressed: shiftPressed
  selectionIndex == 0
    ifTrue: [ ^ false ].
  self resultSlot == 1
    ifTrue: [ 
      (selectionIndex > 2 and: [ self testResults runCount <= 0 ])
        ifTrue: [ ^ false ].
      selectionIndex > 1
        ifTrue: [ resultSlot := selectionIndex ] ]
    ifFalse: [ 
      selectionIndex < 3
        ifTrue: [ resultSlot := selectionIndex ]
        ifFalse: [ 
          | testCase |
          testCase := (resultArray at: resultSlot) at: selectionIndex - 2.
          (TDMethodDefinition
            className: testCase class name
            isMeta: false
            selector: testCase selector
            messagePattern: testCase selector asString
            messagePatternIsRegex: false) itemSelected: listElement topez.
          ^ STON
            toString:
              {#'setMenuCategories:'.
              #(#'testMethod').
              #'clearMenuCategories:'.
              #()} ] ].
  ^ STON
    toString:
      {#'setMenuCategories:'.
      #().
      #'clearMenuCategories:'.
      #(#'testMethod').
      #'refreshView'.
      nil}