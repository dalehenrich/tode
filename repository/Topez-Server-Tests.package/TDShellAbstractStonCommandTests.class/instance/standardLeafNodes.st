private
standardLeafNodes
  ^ {(TDSmalltalkLeafNode new
    name: 'smalltalkLeafNode';
    contents: '3+4';
    yourself).
  (TDScriptLeafNode new
    name: 'scriptLeafNode';
    block: [ :topez :objIn :tokens :windowId | 'hello world' ];
    blockVendor: self;
    yourself).
  (TDTxtLeafNode new
    name: 'textLeafNode';
    contents:
        'This is ' asText
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
    contents: 'cat /home/.window/model';
    yourself)}