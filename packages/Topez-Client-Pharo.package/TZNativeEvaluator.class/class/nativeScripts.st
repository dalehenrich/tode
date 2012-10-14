class initialization
nativeScripts
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    "run init: initialize the commands for both native and gs"

    (scripts at: 'run')
        at: 'init'
        put:
            'TZGsEvaluator initialize.
TZNativeEvaluator initialize.
TZObject initialize.
TZProxyObject initialize.
TZTopez initialize.
TZEvaluator debugMode: true.'