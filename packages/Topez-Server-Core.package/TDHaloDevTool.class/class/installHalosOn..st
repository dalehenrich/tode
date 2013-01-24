as yet unclassified
installHalosOn: aTDTopezServer
  aTDTopezServer
    installHalo: '.self'
      block: [ :theNode | 
          (theNode dotSelfObject asTDObjectNode: theNode topez: theNode topez aspect: #'inspect')
            name: '.self';
            parent: theNode;
            readMe: self readMeSelf;
            yourself ];
    installHalo: '.node'
      block: [ :theNode | 
          (theNode asTDObjectNode: theNode topez: theNode topez aspect: #'inspect')
            name: '.node';
            parent: theNode;
            readMe: self readMeNode;
            yourself ];
    installHalo: '.readme'
      block: [ :theNode | 
          TDTxtLeafNode new
            name: '.readme';
            parent: theNode;
            contents: theNode readMe;
            yourself ];
    installHalo: '.window' block: (self haloWindowBlock: aTDTopezServer);
    installHalo: '.run' block: (self haloRunBlock: aTDTopezServer);
    yourself