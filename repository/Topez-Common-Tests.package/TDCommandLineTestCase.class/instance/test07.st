as yet unclassified
test07
  self
    assert: 'browse amethod @1 > xxx'
    parsesInto:
      {(TDCommandLine new
        tokens: #('browse' 'amethod' '@1');
        redirectTarget: 'xxx';
        yourself)}