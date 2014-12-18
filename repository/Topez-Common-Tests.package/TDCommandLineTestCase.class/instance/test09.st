as yet unclassified
test09
  self
    assert: 'query `this is a test'' " < ; # \ string\`'
    parsesInto:
      {(TDCommandLine new
        tokens: #('query' 'this is a test'' " < ; # \ string\');
        yourself)}