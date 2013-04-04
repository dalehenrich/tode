as yet unclassified
haloBinBlock: aTDTopezServer
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.bin';
    basicContents: (Smalltalk at: #'TDTopezServer') commands;
    parent: parentNode;
    readMe: self readMeBin;
    listBlock: [ :theNode | theNode basicContents keys sorted ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | command manPage index1 index2 |
          command := theNode basicContents at: elementName ifAbsent: absentBlock.
          manPage := command manPage.
          index1 := 'NAME' size + 4.
          index2 := (manPage indexOfSubCollection: 'SYNOPSIS') - 3.
          ((manPage copyFrom: index1 to: index2)
            asTDObjectNode: theNode
            topez: theNode topez
            aspect: #'view')
            name: elementName;
            yourself ];
    yourself ]