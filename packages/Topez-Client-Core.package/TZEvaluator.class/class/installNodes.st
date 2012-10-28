command definition
installNodes
    | homeNode |
    self
        installRootNodes;
        installDebugNodes;
        installTestNodes.
    self rootNode
        addChildNode:
            (TZBinNode new
                name: 'bin';
                listBlock: [ self commands ];
                addBlock: [ :commandName :block | self commands at: commandName put: block ];
                removeBlock: [ :commandName | self commands removeKey: commandName ];
                yourself).
    homeNode := self rootNode childNamed: 'home' addIfAbsent: true.
    homeNode
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
(self lookup: ''/bin'') addLeaf: ''init'' contents: [ :eval :topez :tokens |  eval evaluate: ''input /home/init''].
(self lookup: ''/bin'') addLeaf: ''topez'' contents: [ :eval :topez :tokens |  eval evaluate: ''input /home/topez''].
(self lookup: ''/bin'') addLeaf: ''enableDebug'' contents: [ :eval :topez :tokens |  eval evaluate: ''input /home/debug/enableDebugMode''].
(self lookup: ''/bin'') addLeaf: ''disableDebug'' contents: [ :eval :topez :tokens |  eval evaluate: ''input /home/debug/disableDebugMode''].
''...initialization complete''.
%
';
        yourself