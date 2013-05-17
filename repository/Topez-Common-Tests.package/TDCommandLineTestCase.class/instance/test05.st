as yet unclassified
test05
  self
    assert: 'browse amethod Object>>at:put: > xxx'
    parsesInto:
      {(TDCommandLine new
        tokens: #('browse' 'amethod' 'Object>>at:put:');
        redirectTarget: 'xxx';
        yourself)}