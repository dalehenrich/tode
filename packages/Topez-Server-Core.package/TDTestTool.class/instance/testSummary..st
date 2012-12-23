as yet unclassified
testSummary: testNode
  | resultsText stream suiteNode |
  stream := TextStream on: Text new.
  suiteNode := self topez lookup: testNode printString , '/suite'.
  stream
    nextPutAll: suiteNode printString asText allBold;
    nextPutAll: '-> '.
  suiteNode dotSelfObject tzNodeDisplayOn: stream.
  stream cr.
  resultsText := (topez commands at: 'ds') block
    value: topez
    value: testNode
    value:
      {'ds'.
      (testNode printString , 'result')}
    value: nil.
  stream nextPutAll: resultsText.
  ^ stream contents