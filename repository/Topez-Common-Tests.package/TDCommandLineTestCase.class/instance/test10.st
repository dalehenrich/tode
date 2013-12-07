as yet unclassified
test10
  self
    assert: 'testopt -c foo arg1 > result'
    parsesInto:
      {(TDCommandLine new
        tokens: #('testopt' '-c' 'foo' 'arg1');
        redirectTarget: 'result';
        yourself)}