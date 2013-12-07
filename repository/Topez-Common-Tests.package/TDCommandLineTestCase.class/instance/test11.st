as yet unclassified
test11
  self
    assert: 'command subcommand -c foo arg1 > result'
    parsesInto:
      {(TDCommandLine new
        tokens: #('command' 'subcommand' '-c' 'foo' 'arg1');
        redirectTarget: 'result';
        yourself)}