as yet unclassified
testSummary: testNode dsLevel: dsLevel
  | commandResult stream suiteNode displayPolicy testResultNode dsTool |
  displayPolicy := topez displayPolicy.
  stream := displayPolicy stream.
  suiteNode := self topez lookup: testNode printString , 'suite'.
  stream
    nextPutAll: suiteNode printString asText allBold;
    nextPutAll: '-> '.
  suiteNode dotSelfObject displayOnPolicy: displayPolicy.
  stream cr.
  dsTool := topez toolInstanceFor: 'ds'.
  testResultNode := self topez lookup: testNode printString , 'result'.
  commandResult := dsTool ds: testResultNode level: dsLevel.
  stream nextPutAll: commandResult displayText.
  ^ stream contents