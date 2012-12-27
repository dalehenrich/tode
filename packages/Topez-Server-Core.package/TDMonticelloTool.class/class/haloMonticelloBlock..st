as yet unclassified
haloMonticelloBlock: aTDTopezServer
  self halos
    at: 'dirty'
    put: [ :aTopez | self workingCopiesNode: (self buildDirtyWorkingCopyList sorted: [ :a :b | a name <= b name ]) ].
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.mc';
    basicContents: Halos;
    parent: parentNode;
    readMe: self readMeMonticello;
    listBlock: [ :theNode | theNode basicContents keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | block |
          block := theNode basicContents at: elementName ifAbsent: absentBlock.
          (block value: theNode topez)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself ]