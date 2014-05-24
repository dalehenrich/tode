as yet unclassified
testMethodVersionsCommand
  "run without errors ... to keep me honest"

  self evaluateCommandString: 'method --help versions'.
  self
    createMockClass;
    createMockMethods.
  self
    evaluateCommandString:
      'method versions ' , self mockClassName , '>>testA `' , self mockClassName
        , ' class>>testC` '