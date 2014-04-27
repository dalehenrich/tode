as yet unclassified
testClsAccessorsCommand
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'cls --help ';
    evaluateCommandString: 'cls --help accessors';
    yourself.
  {('cls accessors ' , self mockClassName).
  ('cls accessors --force ' , self mockClassName).
  ('cls accessors --class ' , self mockClassName).
  ('cls accessors --instance ' , self mockClassName).
  ('cls accessors --instance --class ' , self mockClassName).
  ('cls accessors --getters --instance ' , self mockClassName).
  ('cls accessors --getters ' , self mockClassName).
  ('cls accessors --setters ' , self mockClassName).
  ('cls accessors --setters --class ' , self mockClassName).
  ('cls accessors --setters --class --arg=xxx ' , self mockClassName).
  ('cls accessors --setters --class --protocol=yyy ' , self mockClassName)}
    do: [ :commandString | 
      [ 
      self createMockClass.
      self topez evaluateCommandString: commandString ]
        ensure: [ self mockClass ifNotNil: [ :cls | cls removeFromSystem ] ] ]