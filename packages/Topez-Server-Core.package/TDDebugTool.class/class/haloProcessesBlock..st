as yet unclassified
haloProcessesBlock: aTDTopezServer
  ^ [ :parentNode | 
  TDObjectNode new
    name: '.processes';
    basicContents: ProcessorScheduler scheduler allProcesses asArray;
    parent: parentNode;
    readMe: self readMeProcesses;
    listBlock: [ :theNode | (1 to: theNode basicContents size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | process |
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          process := theNode basicContents at: elementName asNumber ifAbsent: absentBlock.
          ((self
            topez: parentNode topez
            objIn: nil
            tokens: #()
            windowId: nil) debugNode: process exception: nil)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself ]