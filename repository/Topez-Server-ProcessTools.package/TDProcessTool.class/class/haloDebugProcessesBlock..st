as yet unclassified
haloDebugProcessesBlock: aTDTopezServer
  ^ [ :parentNode | 
  | processes |
  processes := (SystemRepository listInstancesInMemory: {GsProcess}) at: 1.
  TDObjectNode new
    name: '.debugProcesses';
    basicContents: processes;
    parent: parentNode;
    readMe: self readMeProcesses;
    listBlock: [ :theNode | (1 to: theNode basicContents size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | process debugTool debugNode |
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          process := theNode basicContents
            at: elementName asNumber
            ifAbsent: absentBlock.
          debugTool := TDDebugTool
            topez: parentNode topez
            objIn: nil
            todeCommand: nil.
          debugNode := debugTool
            debugNode: theNode
            process: process
            exception: nil.
          debugNode
            name: elementName;
            yourself ];
    yourself ]