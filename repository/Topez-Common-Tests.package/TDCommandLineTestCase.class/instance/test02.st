as yet unclassified
test02
  self
    assert: 'c > xxx'
    parsesInto:
      {(TDCommandLine new
        tokens: #('c');
        redirectTarget: 'xxx';
        yourself)}