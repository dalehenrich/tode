as yet unclassified
installTestSpecOn: aTDTopezServer
  | path stream |
  path := self commandPath.
  stream := WriteStream on: String new.
  stream
    nextPutAll: '| suite |';
    cr;
    nextPutAll:
        'suite := TestSuite named: ''' , self toolName , ' Tools Suite (';
    nextPutAll: path;
    nextPutAll: '/testSuite))''.';
    cr;
    nextPutAll: self name asString;
    nextPutAll: ' testSuiteClasses do: [:testCase | ';
    cr;
    tab;
    nextPutAll: 'suite addTests: testCase suite tests  ].';
    cr;
    nextPutAll: '^suite';
    cr.
  (aTDTopezServer ensureChildrenExistIn: path)
    _addBasicChildNode:
      (TDSmalltalkLeafNode new
        name: 'testSuite';
        contents: stream contents;
        yourself)