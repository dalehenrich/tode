as yet unclassified
test04
  self
    assert: 'mm copy Topez-Core filetree:///opt/git/tode/repository > xxx'
    parsesInto:
      {(TDCommandLine new
        tokens:
            #('mm' 'copy' 'Topez-Core' 'filetree:///opt/git/tode/repository');
        redirectTarget: 'xxx';
        yourself)}