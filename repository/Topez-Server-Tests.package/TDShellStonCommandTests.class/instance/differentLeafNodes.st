private
differentLeafNodes
  ^ {(TDSmalltalkLeafNode new
    name: 'smalltalkLeafNode';
    contents: '3+4+3+4';
    yourself).
  (TDScriptLeafNode new
    name: 'scriptLeafNode';
    block: [ :topez :objIn :tokens :windowId | 'hello worldhello world' ];
    blockVendor: self;
    yourself).
  (TDTxtLeafNode new
    name: 'textLeafNode';
    contents:
        'This is This is ' asText
            ,
              (Text
                string: 'REALREAL'
                attributes:
                  {(TextColor red).
                  (TextEmphasis bold)})
            , ' text. text.' asText;
    yourself).
  (TDTopezLeafNode new
    name: 'topezLeafNode';
    contents: 'cat /home/.window/model;cat /home/.window/model';
    yourself)}