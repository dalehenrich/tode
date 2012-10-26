command definition
installNodes
    | scriptsNode gsNode |
    super installNodes.
    scriptsNode := self rootNode childNamed: 'scripts' addIfAbsent: true.
    gsNode := scriptsNode childNamed: 'gs' addIfAbsent: true.
    (gsNode childNamed: 'input' addIfAbsent: true)
        addLeaf: 'ar'
            contents:
                'instance
{1. 2. 3. { 1. 2. {1. 2. }. 3. }. 4. }
%';
        addLeaf: 'boom'
            contents:
                'run
| coll |
coll := #(1 2 3 4).
[1 halt] value.
^coll collect: [:each | each printString ].
%
edit stack';
        addLeaf: 'emptyLog'
            contents:
                'run
ObjectLogEntry emptyLog.
^true
%';
        addLeaf: 'log'
            contents:
                'instance
ObjectLogEntry objectLog
%';
        yourself