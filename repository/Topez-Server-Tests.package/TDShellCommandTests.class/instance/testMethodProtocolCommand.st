as yet unclassified
testMethodProtocolCommand
  self topez evaluateCommandString: 'method --help protocol'.
  self
    createMockClass;
    createMockMethods.
  self topez
    evaluateCommandString:
      'method protocol bubble ' , self mockClassName , '>>testA ' , self mockClassName
        , '>>testB `' , self mockClassName , ' class>>testA` `'
        , self mockClassName , ' class>>testB` '.
  self assert: (self mockClass categoryOfSelector: #'testA') = #'bubble'.
  self assert: (self mockClass categoryOfSelector: #'testB') = #'bubble'.
  self assert: (self mockClass class categoryOfSelector: #'testA') = #'bubble'.
  self assert: (self mockClass class categoryOfSelector: #'testB') = #'bubble'