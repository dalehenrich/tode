as yet unclassified
test06
  self
    assert: 'browse amethod Object class>>new > xxx'
    parsesInto:
      {(TDCommandLine new
        tokens: #('browse' 'amethod' 'Object' 'class>>new');
        redirectTarget: 'xxx';
        yourself)}