command definition
installNodes
    | homeNode |
    rootNode := nil.
    self
        installDebugNodes;
        installTestNodes;
        installEventNodes;
        installProjectNodes;
        installEventNodes.
    self topezNode
        addChildNode:
            (TZObjectNode new
                name: 'bin';
                extension: '*';
                listBlock: [ :binDir | self commands keys sorted ];
                elementBlock: [ :binDir :elementName :absentBlock | 
                            | block |
                            block := self commands at: elementName ifAbsent: absentBlock.
                            TZBinLeafNode new
                                name: elementName;
                                contents: block asString;
                                yourself ];
                addBlock: [ :binDir :commandName :block | self commands at: commandName put: block ];
                removeBlock: [ :binDir :commandName | self commands removeKey: commandName ];
                yourself).
    homeNode := self rootNode childNamed: 'home' addIfAbsent: true.
    self scriptNode
        addLeaf: 'array'
            contents:
                '#!/bin/input
inspect
{1. 2. 3. { 1. 2. {1. 2. }. 3. }. 4. }
%';
        addLeaf: 'boom'
            contents:
                '#!/bin/input
run
| coll |
coll := #(1 2 3 4).
[1 halt] value.
^coll collect: [:each | each printString ].
%
edit stack';
        addLeaf: 'topez'
            contents:
                '#!/bin/input
set project Topez
edit prtests
edit prclasses';
        addLeaf: 'init'
            contents:
                '#!/bin/input
topez
TZGsEvaluator initialize.
TZNativeEvaluator initialize.
TZObject initialize.
TZProxyObject initialize.
TZTopez initialize.
TZGsTopez initialize.
TZNativeTopez initialize.
TZSmalltalkEditor initialize.
(self lookup: ''/topez/bin'') addLeaf: ''init'' contents: [ :eval :topez :tokens |  eval evaluate: ''input /topez/scripts/init''].
(self lookup: ''/topez/bin'') addLeaf: ''enableDebug'' contents: [ :eval :topez :tokens |  eval evaluate: ''input /topez/scripts/debug/enableDebugMode''].
(self lookup: ''/topez/bin'') addLeaf: ''disableDebug'' contents: [ :eval :topez :tokens |  eval evaluate: ''input /topez/scripts/debug/disableDebugMode''].
(self lookup: ''/topez/bin'') addLeaf: ''refresh'' contents: [ :eval :topez :tokens |  eval evaluate: ''input /topez/scripts/topez''].
''...initialization complete''.
%
';
        yourself