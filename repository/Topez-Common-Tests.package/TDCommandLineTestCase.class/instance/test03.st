as yet unclassified
test03
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