command definition
installDebugNodes
    | debugNode topezNode scriptNode |
    topezNode := self rootNode childNamed: 'topez' addIfAbsent: true.
    scriptNode := topezNode childNamed: 'scripts' addIfAbsent: true.
    debugNode := scriptNode childNamed: 'debug' addIfAbsent: true.
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