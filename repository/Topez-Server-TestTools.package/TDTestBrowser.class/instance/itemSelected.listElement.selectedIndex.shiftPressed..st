tools
itemSelected: miniTool listElement: listElement selectedIndex: selectionIndex shiftPressed: shiftPressed
  selectionIndex == 0
    ifTrue: [ ^ false ].
  self resultSlot == 1
    ifTrue: [ 
      (selectionIndex > 2 and: [ run size <= 0 ])
        ifTrue: [ ^ false ].
      selectionIndex > 1
        ifTrue: [ resultSlot := selectionIndex ].
      selectionIndex < 3
        ifTrue: [ self testSuite	"force refresh of the test suite" ] ]
    ifFalse: [ 
      selectionIndex < 3
        ifTrue: [ 
          self testSuite.	"force refresh of the test suite"
          resultSlot := selectionIndex ]
        ifFalse: [ 
          | testCase testMethodClass |
          testCase := self testCasesAtResultSlot at: selectionIndex - 2.
          testMethodClass := testCase class
            whichClassIncludesSelector: testCase selector asString.
          (TDMethodDefinition
            className: testMethodClass name
            isMeta: false
            selector: testCase selector
            messagePattern: testCase selector asString
            messagePatternIsRegex: false) itemSelected: listElement topez.
          ^ self objectSerializer
            toString:
              {#'setMenuCategories:'.
              #(#'testMethod').
              #'clearMenuCategories:'.
              #()} ] ].
  ^ self objectSerializer
    toString:
      {#'setMenuCategories:'.
      #().
      #'clearMenuCategories:'.
      #(#'testMethod').
      #'refreshView'.
      nil}