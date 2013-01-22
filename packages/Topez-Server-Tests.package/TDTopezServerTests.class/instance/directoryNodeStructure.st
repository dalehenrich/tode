as yet unclassified
directoryNodeStructure
  | rootNode |
  rootNode := TDDirectoryNode new.
  rootNode
    addChildNode:
        (TDScriptLeafNode new
            name: 'a';
            yourself);
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'b';
            contents: '3+4';
            yourself);
    addChildNode:
        (TDTopezLeafNode new
            name: 'c';
            contents: 'cat /home/.window/model';
            yourself);
    addChildNode:
        (TDTxtLeafNode new
            name: 'd';
            contents: 'This is a string';
            yourself);
    yourself.
  ^ rootNode