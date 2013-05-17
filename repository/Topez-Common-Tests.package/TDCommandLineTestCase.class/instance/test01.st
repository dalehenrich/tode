as yet unclassified
test01
  self assert: '' shouldParse: false into: #().
  self
    assert: 'cd'
    parsesInto:
      {(TDCommandLine new
        tokens: {'cd'};
        yourself)}.
  self
    assert: 'cd ..'
    parsesInto:
      {(TDCommandLine new
        tokens:
            {'cd'.
              '..'};
        yourself)}.
  self
    assert: 'cd /home/bin/xxx'
    parsesInto:
      {(TDCommandLine new
        tokens:
            {'cd'.
              '/home/bin/xxx'};
        yourself)}.
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
    assert: 'mm copy Topez-Core filetree:///opt/git/tode/repository; edit'
    parsesInto:
      {(TDCommandLine new
        tokens:
            {'mm'.
              'copy'.
              'Topez-Core'.
              'filetree:///opt/git/tode/repository'};
        yourself).
      (TDCommandLine new
        tokens: {'edit'};
        yourself)}