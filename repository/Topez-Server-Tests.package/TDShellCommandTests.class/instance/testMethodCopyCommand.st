as yet unclassified
testMethodCopyCommand
  | node |
  self evaluateCommandString: 'method --help copy'.
  self
    createMockClass;
    createMockSubClass;
    createMockMethods.
  self
    evaluateCommandString:
        'method copy ' , self mockClassName , '>>testA ' , self mockSubClassName;
    evaluateCommandString:
        'method copy --class ' , self mockClassName , '>>testA ' , self mockSubClassName;
    evaluateCommandString:
        'method copy `' , self mockClassName , ' class>>testC` ' , self mockSubClassName;
    yourself.
  self assert: self mockSubClass selectors sorted = #(#'testA' #'testC').
  self assert: self mockSubClass class selectors sorted = #(#'testA').
  node := self createClassRefNode.
  self
    evaluateCommandString:
      'method copy --class ' , self mockClassName , '>>testB @' , node printString.
  self
    assert:
      self mockClass class selectors sorted = #(#'testB' #'testC' #'testD')