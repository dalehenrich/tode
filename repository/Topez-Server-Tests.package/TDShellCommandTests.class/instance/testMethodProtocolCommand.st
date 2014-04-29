as yet unclassified
testMethodProtocolCommand
  self topez evaluateCommandString: 'method --help protocol'.
  self
    createMockClass;
    createMockMethods.
  self topez
    evaluateCommandString:
      'method protocol bubble ' , self mockClassName , '>>testA ' , self mockClassName
        , '>>testB `' , self mockClassName , ' class>>testC` `'
        , self mockClassName , ' class>>testD` '.
  self assert: (self mockClass categoryOfSelector: #'testA') = #'bubble'.
  self assert: (self mockClass categoryOfSelector: #'testB') = #'bubble'.
  self assert: (self mockClass class categoryOfSelector: #'testC') = #'bubble'.
  self assert: (self mockClass class categoryOfSelector: #'testD') = #'bubble'