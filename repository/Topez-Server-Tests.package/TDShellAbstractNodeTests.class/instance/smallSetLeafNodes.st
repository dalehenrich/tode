private-node sets
smallSetLeafNodes
  ^ {(TDSmalltalkLeafNode new
    name: 'smalltalkLeafNode';
    contents: 'small 3+4';
    yourself).
  (TDScriptLeafNode new
    name: 'scriptLeafNode';
    block: [ :topez :objIn :tokens :windowId | 'hello small world' ];
    blockVendor: self;
    yourself)}