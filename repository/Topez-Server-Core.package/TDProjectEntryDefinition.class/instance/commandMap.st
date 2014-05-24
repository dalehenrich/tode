accessing
commandMap
  commandMap ifNil: [ commandMap := Dictionary new ].
  ^ commandMap