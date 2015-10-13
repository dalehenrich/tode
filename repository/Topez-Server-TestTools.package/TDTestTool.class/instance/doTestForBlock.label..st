as yet unclassified
doTestForBlock: suiteBlock label: label
  ^ self options
    at: 'batch'
    ifPresent: [ :ignored | self batchRunTestSuiteBlock: suiteBlock ]
    ifAbsent: [ self browseTestSuiteBlock: suiteBlock label: label ]