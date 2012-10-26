command definition
installNodes
    | scriptsNode gsNode |
    super installNodes.
    scriptsNode := self rootNode childNamed: 'scripts' addIfAbsent: true.
    gsNode := scriptsNode childNamed: 'client' addIfAbsent: true.
    (gsNode childNamed: 'run' addIfAbsent: true)
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