tests
testProjectNew
  "use --force early on to clean up anything leftover from previous failed runs"

  | gitRootPath |
  self
    evaluateCommandString: 'project --help new';
    evaluateCommandString: 'project new --force Foo';
    evaluateCommandString: 'project delete Foo';
    evaluateCommandString: 'project new --stone --force Foo';
    evaluateCommandString: 'project delete Foo';
    evaluateCommandString: 'project new --local Foo';
    evaluateCommandString: 'project delete Foo';
    evaluateCommandString: 'project new Foo';
    evaluateCommandString: 'project delete Foo';
    evaluateCommandString: 'project new --stone Foo';
    evaluateCommandString: 'project delete Foo';
    evaluateCommandString: 'project new  Foo';
    evaluateCommandString: 'project new --force Foo';
    evaluateCommandString: 'project delete Foo';
    evaluateCommandString: 'project new --stone Foo';
    evaluateCommandString: 'project new --stone --force Foo';
    evaluateCommandString: 'project delete Foo';
    evaluateCommandString: 'project new --package=Foo-Base Foo';
    evaluateCommandString: 'project delete Foo';
    yourself.
  gitRootPath := '$GS_SERVER_STONES/' , self topez serverStoneName , '/git'.
  self
    evaluateCommandString: 'project new --gitRoot=' , gitRootPath , ' Foo';
    evaluateCommandString: 'project delete Foo';
    yourself
