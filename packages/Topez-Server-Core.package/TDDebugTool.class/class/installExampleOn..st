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
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'fork';
            contents:
                '"opportunity to work with processes and yield command"
[ (Delay forSeconds: 10) wait ] fork';
            yourself);
    yourself