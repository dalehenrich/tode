*tode-gemstone-server-core
asTDSessionObjectNode: parentNode topez: aTopez aspect: anAspect
  "Create a node with a non-persisent connection to self ..."

  "not many useful things you can do with a clientForwarder ... without triggering references to client"

  ^ TDSessionObjectNode new
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