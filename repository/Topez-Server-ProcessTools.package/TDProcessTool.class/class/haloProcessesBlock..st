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