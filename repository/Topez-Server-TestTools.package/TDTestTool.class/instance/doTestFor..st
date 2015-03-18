as yet unclassified
doTestFor: suite
  ^ self options
    at: 'batch'
    ifPresent: [ :ignored | self batchRunTestSuite: suite ]
    ifAbsent: [ self browseTestSuite: suite ]