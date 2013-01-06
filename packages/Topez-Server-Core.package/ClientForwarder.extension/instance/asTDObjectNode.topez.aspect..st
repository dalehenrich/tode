*topez-server-core
asTDObjectNode: parentNode topez: aTopez aspect: anAspect
  "not many useful things you can do with a clientForwarder ... without triggering references to client"

  ^ TDObjectNode new
    name: 'A ClientForwarder';
    parent: parentNode;
    aspect: anAspect;
    topez: aTopez;
    readMe: '';
    basicContents: self;
    listBlock: [ :theNode | #() ];
    elementBlock: [ :theNode :elementName :absentBlock | absentBlock value ];
    yourself