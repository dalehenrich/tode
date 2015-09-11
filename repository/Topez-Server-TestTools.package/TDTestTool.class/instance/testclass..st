as yet unclassified
testclass: classNames
  ^ self
    doTestForBlock: [ self testSuiteFor: classNames ]
    label: classNames printString , ' tests'