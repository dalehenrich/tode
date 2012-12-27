as yet unclassified
haloProcessesBlock: aTDTopezServer
  ^ [ :parentNode | 
  | processes |
  processes := ProcessorScheduler scheduler allProcesses asArray.
  TDObjectNode new
    name: '.processes';
    basicContents: processes;
    parent: parentNode;
    readMe: self readMeProcesses;
    listBlock: [ :theNode | (1 to: theNode basicContents size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | process |
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          process := theNode basicContents at: elementName asNumber ifAbsent: absentBlock.
          ((TDDebugTool
            topez: parentNode topez
            objIn: nil
            tokens: #()
            windowId: nil) debugNode: process exception: nil)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself ]