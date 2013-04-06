as yet unclassified
haloManBlock: aTDTopezServer
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.man';
    basicContents: (Smalltalk at: #'TDTopezServer') commands;
    parent: parentNode;
    readMe: self readMeMan;
    listBlock: [ :theNode | theNode basicContents keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | command manPage |
          command := theNode basicContents at: elementName ifAbsent: absentBlock.
          manPage := command manPage.
          (manPage summary
            asTDObjectNode: theNode
            topez: theNode topez
            aspect: #'view')
            name: elementName;
            yourself ];
    yourself ]