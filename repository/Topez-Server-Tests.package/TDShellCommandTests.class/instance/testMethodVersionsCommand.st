as yet unclassified
testMethodVersionsCommand
  "run without errors ... to keep me honest"

  self topez evaluateCommandString: 'method --help versions'.
  self
    createMockClass;
    createMockMethods.
  self topez
    evaluateCommandString:
      'method versions ' , self mockClassName , '>>testA `' , self mockClassName
        , ' class>>testC` '