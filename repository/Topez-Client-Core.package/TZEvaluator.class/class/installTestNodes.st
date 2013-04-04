command definition
installTestNodes
    | testNode |
    testNode := self scriptNode childNamed: 'tests' addIfAbsent: true.
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