as yet unclassified
installOptionsOn: aTDTopezServer
  | optionsNode |
  ((aTDTopezServer ensureChildrenExistIn: self commandPath)
    _addBasicChildNode:
      (optionsNode := TDDirectoryNode new
        name: 'options';
        readMe: 'options for core tools';
        yourself))
    _addBasicChildNode:
        (TDSmalltalkLeafNode new
            name: 'setListLimit';
            contents:
                self class theNonMetaClass name asString , ' listLimit: '
                    , self listLimit asString;
            yourself);
    _addBasicChildNode:
        (TDSmalltalkLeafNode new
            name: 'setDisplayOops';
            contents:
                self class theNonMetaClass name asString , ' displayOops: '
                    , self displayOops asString;
            yourself);
    _addBasicChildNode:
        (TDSmalltalkLeafNode new
            name: 'setCharacterLimit';
            contents:
                self class theNonMetaClass name asString , ' characterLimit: '
                    , self characterLimit asString;
            yourself);
    yourself