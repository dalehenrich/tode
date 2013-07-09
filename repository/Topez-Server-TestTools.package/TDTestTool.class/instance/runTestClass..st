as yet unclassified
runTestClass: cls
  cls suite tests do: [ :testCase | cls debug: testCase selector asSymbol ].
  ^ 'all tests pass'