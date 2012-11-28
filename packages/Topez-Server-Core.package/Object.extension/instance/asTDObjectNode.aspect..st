*topez-server-core
asTDObjectNode: aTopez aspect: aspect
    ^ TDObjectNode new
        name: self printString;
        basicContents: self;
        listBlock: [ :theNode |  ];
        elementBlock: [ :theNode :elementName :absentBlock |  ];
        yourself