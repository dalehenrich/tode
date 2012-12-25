as yet unclassified
haloMonticelloBlock: aTDTopezServer
  self halos at: 'dirty' put: [ :aTopez | self buildDirtyWorkingCopyList sorted: [ :a :b | a name <= b name ] ].
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.mc';
    basicContents: Halos;
    parent: parentNode;
    readMe: self readMeMonticello;
    listBlock: [ :theNode | theNode basicContents keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | block wcList |
          block := theNode basicContents at: elementName ifAbsent: absentBlock.
          wcList := block value: theNode topez.
          (self workingCopiesNode: wcList)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself ]