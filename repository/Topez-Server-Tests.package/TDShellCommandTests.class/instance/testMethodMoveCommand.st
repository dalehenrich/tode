as yet unclassified
testMethodMoveCommand
  | node |
  self topez evaluateCommandString: 'method --help move'.
  self
    createMockClass;
    createMockSubClass;
    createMockMethods.
  self topez
    evaluateCommandString:
        'method move ' , self mockClassName , '>>testA ' , self mockSubClassName;
    evaluateCommandString:
        'method move --class ' , self mockClassName , '>>testB ' , self mockSubClassName;
    evaluateCommandString:
        'method move `' , self mockClassName , ' class>>testC` ' , self mockSubClassName;
    yourself.
  self assert: self mockSubClass selectors sorted = #(#'testA' #'testC').
  self assert: self mockSubClass class selectors sorted = #(#'testB').
  node := self createClassRefNode.
  self topez
    evaluateCommandString:
      'method move `' , self mockClassName , ' class>>testD` @' , node printString.
  self assert: self mockClass class selectors sorted = #().
  self assert: self mockClass selectors sorted = #(#'testD')