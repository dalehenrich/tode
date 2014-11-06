private-node sets
subtlyDifferentLeafNodes
  ^ {(TDSmalltalkLeafNode new
    name: 'smalltalkLeafNode';
    contents: '-+4';
    yourself).
  (TDScriptLeafNode new
    name: 'scriptLeafNode';
    block: [ :topez :objIn :tokens :windowId | '-ello world' ];
    blockVendor: self;
    yourself).
  (TDTxtLeafNode new
    name: 'textLeafNode';
    contents:
        '-his is ' asText
            ,
              (Text
                string: 'REAL'
                attributes:
                  {(TextColor red).
                  (TextEmphasis bold)})
            , ' text.' asText;
    yourself).
  (TDTopezLeafNode new
    name: 'topezLeafNode';
    contents: '-at /home/.window/model';
    yourself)}