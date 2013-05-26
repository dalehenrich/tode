*topez-server-31x-debugtools
breakpointNode: parentNode
  | node breakReport |
  breakReport := self breakpointReport.
  node := TDObjectNode new
    name: 'breakpoints';
    parent: parentNode;
    readMe: self readMeBreakpoint;
    basicContents: breakReport;
    listBlock: [ :theNode | 
          | report |
          report := theNode basicContents.
          (1 to: report size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | report |
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          report := theNode basicContents.
          ((report at: elementName asNumber)
            asTDObjectNode: theNode
            topez: theNode topez
            aspect: #'view')
            name: elementName;
            yourself ];
    yourself.
  ^ node