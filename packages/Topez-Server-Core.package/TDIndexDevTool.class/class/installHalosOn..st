as yet unclassified
installHalosOn: aTDTopezServer
    aTDTopezServer
        installHalo: '.index'
            block: [ :theNode | 
                    TDDirectoryNode new
                        name: '.index';
                        parent: theNode;
                        topez: theNode topez;
                        yourself ];
        yourself