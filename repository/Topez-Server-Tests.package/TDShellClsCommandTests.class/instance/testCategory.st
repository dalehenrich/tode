as yet unclassified
testCategory
  | node |
  self createMockSubClass.
  node := self createClassRefNode.
  self evaluateCommandString: 'cls --help category'.
  self
    evaluateCommandString:
      'cls category `New-Category` ' , self mockSubClassName , ' @' , node printString.
  self assert: self mockSubClass category = 'New-Category'.
  self assert: self mockClass category = 'New-Category'.
  self
    evaluateCommandString: 'cls category `Newer-Category` @' , node printString.
  self assert: self mockClass category = 'Newer-Category'