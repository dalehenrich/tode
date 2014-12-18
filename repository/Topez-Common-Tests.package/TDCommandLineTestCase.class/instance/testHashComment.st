as yet unclassified
testHashComment
  self
    assert: 'cd /home/bin/xxx; ls'
    parsesInto:
      {(TDCommandLine new
        tokens:
            {'cd'.
              '/home/bin/xxx'};
        yourself).
      (TDCommandLine new
        tokens: {'ls'};
        yourself)}.
  self
    assert: 'cd /home/bin/xxx#; ls'
    parsesInto:
      {(TDCommandLine new
        tokens:
            {'cd'.
              '/home/bin/xxx'};
        yourself)}.
  self
    assert: 'c > xxx'
    parsesInto:
      {(TDCommandLine new
        tokens: #('c');
        redirectTarget: 'xxx';
        yourself)}.
  self
    assert: 'c #> xxx'
    parsesInto:
      {(TDCommandLine new
        tokens: #('c');
        yourself)}