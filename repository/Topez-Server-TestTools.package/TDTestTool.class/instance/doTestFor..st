as yet unclassified
doTestFor: suite
  ^ options
    at: 'batch'
    ifPresent: [ :ignored | self batchRunTestSuite: suite ]
    ifAbsent: [ self browseTestSuite: suite ]