as yet unclassified
installOptionsOn: aTDTopezServer
  | optionsNode |
  ((aTDTopezServer ensureChildrenExistIn: self commandPath)
    addChildNode:
      (optionsNode := TDDirectoryNode new
        name: 'options';
        readMe: 'options for core tools';
        yourself))
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'setListLimit';
            contents:
                self class theNonMetaClass name asString , ' listLimit: '
                    , self listLimit asString;
            yourself);
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'setDisplayOops';
            contents:
                self class theNonMetaClass name asString , ' displayOops: '
                    , self displayOops asString;
            yourself);
    addChildNode:
        (TDSmalltalkLeafNode new
            name: 'setCharacterLimit';
            contents:
                self class theNonMetaClass name asString , ' characterLimit: '
                    , self characterLimit asString;
            yourself);
    yourself