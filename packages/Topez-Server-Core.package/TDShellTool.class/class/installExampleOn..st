as yet unclassified
installExampleOn: aTDTopezServer
  (aTDTopezServer lookup: '/home')
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'st';
            contents: '3+4';
            yourself);
    addChildNode:
        (TDTxtLeafNode new
            name: 'text';
            contents:
                'This is ' asText
                    ,
                      (Text
                        string: 'REAL'
                        attributes:
                          {(TextColor red).
                          (TextEmphasis bold)}) , ' text.' asText;
            yourself);
    addChildNode:
        (TDTxtLeafNode new
            name: 'analysis';
            contents:
                (Text
                    string:
                      '==============================
=============================='
                    attributes: {(TextEmphasis bold)});
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'topez';
            contents: 'cat /home/.window/model';
            yourself);
    addChildNode:
        (TDScriptLeafNode new
            name: 'script';
            block: [ :topez :objIn :tokens :windowId | 'hello world' ];
            yourself);
    yourself