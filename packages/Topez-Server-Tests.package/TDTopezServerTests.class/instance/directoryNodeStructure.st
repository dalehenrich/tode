as yet unclassified
directoryNodeStructure
  | rootNode |
  rootNode := TDDirectoryNode new.
  rootNode
    addChildNode:
        (TDDirectoryNode new
            name: 'a';
            yourself);
    addChildNode:
        (TDDirectoryNode new
            name: 'b';
            yourself);
    addChildNode:
        (TDDirectoryNode new
            name: 'c';
            yourself);
    yourself.
  ^ rootNode