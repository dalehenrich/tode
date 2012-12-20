as yet unclassified
installOptionsOn: aTDTopezServer
    | optionsNode |
    ((aTDTopezServer installChildrenAt: self commandPath)
        addChildNode:
            (optionsNode := TDDirectoryNode new
                name: 'options';
                readMe: 'options for core tools';
                yourself))
        addChildNode:
                (TDSmalltalkLeafNode new
                        name: 'setListLimit';
                        contents: self class theNonMetaClass name asString , ' listLimit: ' , self listLimit asString;
                        yourself);
        yourself