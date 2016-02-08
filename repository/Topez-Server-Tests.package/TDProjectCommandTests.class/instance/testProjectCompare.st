tests
testProjectCompare
  self evaluateCommandString: 'project --help compare'.
  [ self evaluateCommandString: 'project compare Tode' ]
    on: TodeCommandError
    do: [ :ex | 
      (ex description begins with: 'Nothing to compare')
        ifFalse: [ ex pass ] ].
  self
    evaluateCommandString: 'project compare --commit=dd9c564 Tode';
    yourself