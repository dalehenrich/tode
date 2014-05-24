as yet unclassified
testAccessors02
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'cls --help ';
    evaluateCommandString: 'cls --help accessors';
    yourself.
  {('cls accessors ' , self mockSubClassName , ' ' , self mockClassName).
  ('cls accessors --force ' , self mockSubClassName).
  ('cls accessors --class ' , self mockSubClassName).
  ('cls accessors --instance ' , self mockSubClassName).
  ('cls accessors --instance --class ' , self mockSubClassName).
  ('cls accessors --getters --instance ' , self mockSubClassName).
  ('cls accessors --getters ' , self mockSubClassName).
  ('cls accessors --setters ' , self mockSubClassName).
  ('cls accessors --setters --class ' , self mockSubClassName).
  ('cls accessors --setters --class --arg=xxx ' , self mockSubClassName).
  ('cls accessors --setters --class --protocol=yyy ' , self mockSubClassName)}
    do: [ :commandString | 
      self createMockSubClass.
      self evaluateCommandString: commandString.
      self mockSubClass ifNotNil: [ :cls | cls removeFromSystem ] ]