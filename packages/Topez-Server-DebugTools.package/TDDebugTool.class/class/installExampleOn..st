as yet unclassified
installExampleOn: aTDTopezServer
  (aTDTopezServer lookup: '/home')
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'halt';
            contents:
                '"opportunity to use debugger"
| block |
block := [:arg | arg halt].
block value: 100';
            yourself);
    yourself