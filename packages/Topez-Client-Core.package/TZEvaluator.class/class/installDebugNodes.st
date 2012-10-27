command definition
installDebugNodes
    | debugNode homeNode |
    homeNode := self rootNode childNamed: 'home' addIfAbsent: true.
    debugNode := homeNode childNamed: 'debug' addIfAbsent: true.
    debugNode
        addLeaf: 'debugMode'
            contents:
                '#!/bin/input
topez
TZEvaluator debugMode
%';
        addLeaf: 'enableDebugMode'
            contents:
                '#!/bin/input
topez
TZEvaluator debugMode: true
%';
        addLeaf: 'disableDebugMode'
            contents:
                '#!/bin/input
topez
TZEvaluator debugMode: false
%';
        yourself