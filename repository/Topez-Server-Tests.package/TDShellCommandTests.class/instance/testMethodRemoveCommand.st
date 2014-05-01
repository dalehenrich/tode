as yet unclassified
testMethodRemoveCommand
  self evaluateCommandString: 'method --help remove'.
  self
    createMockClass;
    createMockMethods.
  self
    evaluateCommandString: 'method remove ' , self mockClassName , '>>testA ';
    evaluateCommandString:
        'method remove `' , self mockClassName , ' class>>testC` ';
    yourself.
  self assert: self mockClass selectors sorted = #(#'testB').
  self assert: self mockClass class selectors sorted = #(#'testD')