as yet unclassified
testclass: classNames
  | suite cl |
  suite := self testSuiteFor: classNames.
  ^ self doTestFor: suite