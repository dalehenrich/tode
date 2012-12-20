as yet unclassified
breakpointNode
    | node breakReport |
    breakReport := ((GsNMethod _breakReport: false) at: 2)
        collect: [ :each | (each at: 2) name asString , '>>' , (each at: 3) asString , ' @' , (each at: 4) asString ].
    node := TDObjectNode new
        name: 'breakpoints';
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
                    ((report at: elementName asNumber) asTDObjectNode: theNode topez aspect: #'debug')
                        parent: theNode;
                        name: elementName;
                        yourself ];
        yourself.
    ^ node