class initialization
gsScripts
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    (scripts at: 'input')
        at: 'boom'
            put:
                'level 3
set class TZEngine';
        at: 'emptyLog'
            put:
                'run
ObjectLogEntry emptyLog.
^true
%';
        at: 'log'
            put:
                'instance
ObjectLogEntry objectLog
%
edit instance'