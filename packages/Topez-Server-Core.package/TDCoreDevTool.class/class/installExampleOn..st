as yet unclassified
installExampleOn: aTDTopezServer
    (aTDTopezServer lookup: '/home')
        addChildNode:
                (TDSmalltalkLeafNode new
                        name: 'st';
                        contents: '3+4';
                        yourself);
        addChildNode:
                (TDTopezLeafNode new
                        name: 'topez';
                        contents: 'cat /home/.window/model';
                        yourself);
        addChildNode:
                (TDScriptLeafNode new
                        name: 'script';
                        contents: '[ :topez :tokens :windowId | ''hello world'' ]';
                        yourself);
        yourself