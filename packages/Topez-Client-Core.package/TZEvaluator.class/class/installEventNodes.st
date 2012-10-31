command definition
installEventNodes
    | eventsNode keysNode keys |
    eventsNode := self topezNode childNamed: 'events' addIfAbsent: true.
    eventsNode
        addChildNode:
            (TZObjectNode new
                name: 'clicks';
                extension: '*';
                listBlock: [ :binDir | (TZProxyObject clickBlocks classesAt: #'singleClick') sorted ];
                elementBlock: [ :binDir :className :absentBlock | 
                            (TZProxyObject clickBlocks at: #'singleClick' forClass: className ifAbsent: [  ])
                                ifNotNil: [ :block | 
                                    TZBinLeafNode new
                                        name: className;
                                        contents: block asString;
                                        yourself ] ];
                addBlock: [ :binDir :commandName :block | TZProxyObject clickBlocks at: #'singleClick' forClass: binDir name put: block ];
                removeBlock: [ :binDir :commandName | self halt ];
                yourself).
    keysNode := eventsNode childNamed: 'keys' addIfAbsent: true.
    keys := TZProxyObject clickBlocks atKeys.
    keys remove: #'singleClick' ifAbsent: [  ].
    keys
        do: [ :key | 
            keysNode
                addChildNode:
                    (TZObjectNode new
                        name: key asString;
                        extension: '*';
                        listBlock: [ :binDir | (TZProxyObject clickBlocks classesAt: key) sorted ];
                        elementBlock: [ :binDir :className :absentBlock | 
                                    (TZProxyObject clickBlocks at: key forClass: className ifAbsent: [  ])
                                        ifNotNil: [ :block | 
                                            TZBinLeafNode new
                                                name: className;
                                                contents: block asString;
                                                yourself ] ];
                        addBlock: [ :binDir :commandName :block | TZProxyObject clickBlocks at: binDir parent name asSymbol forClass: binDir name put: block ];
                        removeBlock: [ :binDir :commandName | self halt ];
                        yourself) ]