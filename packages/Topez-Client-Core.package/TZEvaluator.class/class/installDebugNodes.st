command definition
installDebugNodes
    | debugNode |
    debugNode := self scriptNode childNamed: 'debug' addIfAbsent: true.
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