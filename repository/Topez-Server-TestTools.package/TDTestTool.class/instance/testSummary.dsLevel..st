as yet unclassified
testSummary: testNode dsLevel: dsLevel
  | commandResult stream suiteNode displayPolicy |
  displayPolicy := topez displayPolicy.
  stream := displayPolicy stream.
  suiteNode := self topez lookup: testNode printString , 'suite'.
  stream
    nextPutAll: suiteNode printString asText allBold;
    nextPutAll: '-> '.
  suiteNode dotSelfObject displayOnPolicy: displayPolicy.
  stream cr.
  commandResult := (topez commands at: 'ds') block
    value: topez
    value: testNode
    value:
      {'ds'.
      (testNode printString , 'result').
      (dsLevel asString)}
    value: nil.
  stream nextPutAll: commandResult displayText.
  ^ stream contents