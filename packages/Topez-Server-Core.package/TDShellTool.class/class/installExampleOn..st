as yet unclassified
installExampleOn: aTDTopezServer
  | examplesNode |
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
    yourself.
  (aTDTopezServer lookup: self commandPath)
    addChildNode:
      (examplesNode := TDDirectoryNode new
        name: 'examples';
        readMe: 'debugger examples';
        yourself).
  examplesNode
    addChildNode:
        (TDTopezLeafNode new
            name: 'runEx';
            contents:
                '#
# interesting example of using run command with |
#
run | run
3+4
%
self + 3
%';
            yourself);
    yourself