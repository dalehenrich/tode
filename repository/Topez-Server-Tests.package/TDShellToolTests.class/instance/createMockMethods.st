as yet unclassified
createMockMethods
  | cls |
  cls := self mockClass.
  cls
    compileMethod: 'testA ^self' category: 'test';
    compileMethod: 'testB ^self' category: 'test';
    yourself.
  cls class
    compileMethod: 'testC ^self' category: 'test';
    compileMethod: 'testD ^self' category: 'test';
    yourself