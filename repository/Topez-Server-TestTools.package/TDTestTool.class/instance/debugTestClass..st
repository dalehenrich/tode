as yet unclassified
debugTestClass: cls
  cls suite tests do: [ :testCase | cls debug: testCase selector asSymbol ].
  ^ 'all tests pass'