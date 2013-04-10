*topez-server-core
asTDObjectNode: parentNode topez: aTopez aspect: anAspect
  "not many useful things you can do with a clientForwarder ... without triggering references to client"

  ^ TDObjectNode new
    name: 'A ClientForwarder';
    parent: parentNode;
    builderAspect: anAspect;
    topez: aTopez;
    readMe:
        'A client forwarder represents an object on the client. All messages (well almost all) are forwarded to the instance on the client.';
    basicContents: self;
    listBlock: [ :theNode | #() ];
    elementBlock: [ :theNode :elementName :absentBlock | absentBlock value ];
    yourself