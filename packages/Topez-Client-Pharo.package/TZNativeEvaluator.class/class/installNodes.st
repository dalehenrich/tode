command definition
installNodes
    super installNodes.
    (self rootNode childNamed: 'home' addIfAbsent: true)
        addLeaf: 'init'
            contents:
                'TZGsEvaluator initialize.
TZNativeEvaluator initialize.
TZObject initialize.
TZProxyObject initialize.
TZTopez initialize.
TZGsTopez initialize.
TZNativeTopez initialize.
TZEvaluator debugMode: true.
TZSmalltalkEditor initialize';
        yourself