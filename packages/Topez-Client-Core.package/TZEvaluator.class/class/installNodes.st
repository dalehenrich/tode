command definition
installNodes
    | testNode homeNode |
    self installRootNodes.
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
        yourself.
    testNode := self rootNode childNamed: 'testScripts' addIfAbsent: true.
    testNode
        addLeaf: 'test_topez'
            contents:
                '#!/bin/input
run
3+4
%';
        addLeaf: 'test_st' contents: '3+4';
        yourself.
    (testNode childNamed: 'input' addIfAbsent: true)
        addLeaf: 'testing'
            contents:
                '#!/bin/input
run
3+4
%';
        yourself.
    (testNode childNamed: 'topez' addIfAbsent: true)
        addLeaf: 'testing' contents: '3+4';
        yourself.
    (testNode childNamed: 'run' addIfAbsent: true)
        addLeaf: 'testing' contents: '3+4';
        yourself