command definition
installNodes
    | scriptsNode gsNode |
    super installNodes.
    (self rootNode childNamed: 'home' addIfAbsent: true)
        addLeaf: 'emptyLog'
            contents:
                '#!/bin/input
run
ObjectLogEntry emptyLog.
^true
%';
        addLeaf: 'log'
            contents:
                '#!/bin/input
instance
ObjectLogEntry objectLog
%';
        yourself