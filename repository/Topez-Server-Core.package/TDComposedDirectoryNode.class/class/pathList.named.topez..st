instance creation
pathList: pathList named: nodeName topez: topez
  | entryList |
  entryList := pathList
    collect: [ :each | 
      TDPathComposedDirectoryEntry new
        node: each;
        topez: topez;
        yourself ].
  ^ self new
    name: nodeName;
    contents:
        (TDPathComposedDirectoryNodeContents new
            entryList: entryList;
            yourself);
    topez: topez;
    yourself