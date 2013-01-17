as yet unclassified
installMasterTestSpecOn: aTDTopezServer
  | path stream |
  path := self basePath.
  stream := WriteStream on: String new.
  stream
    nextPutAll: '| suite |';
    cr;
    nextPutAll: 'suite := TestSuite named: ''Master Tools Suite (';
    nextPutAll: path;
    nextPutAll: '/testSuite)''.';
    cr;
    nextPutAll: self name asString , ' withAllSubclasses do: [:cl |';
    cr;
    tab;
    nextPutAll: 'cl testSuiteClasses do: [:testCase | ';
    cr;
    tab;
    tab;
    nextPutAll: 'suite addTests: testCase suite tests ] ].';
    cr;
    nextPutAll: '^suite';
    cr.
  (aTDTopezServer installChildrenAt: path)
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'testSuite';
            contents: stream contents;
            yourself);
    yourself