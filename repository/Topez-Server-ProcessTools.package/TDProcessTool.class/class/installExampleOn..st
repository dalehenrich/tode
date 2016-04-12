as yet unclassified
installExampleOn: aTDTopezServer
  (aTDTopezServer lookup: '/examples')
    _addBasicChildNode:
        (TDSmalltalkLeafNode new
            name: 'fork';
            contents:
                '"opportunity to work with processes and yield command"
[ (Delay forSeconds: 10) wait ] fork';
            yourself);
    yourself