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
        yourself