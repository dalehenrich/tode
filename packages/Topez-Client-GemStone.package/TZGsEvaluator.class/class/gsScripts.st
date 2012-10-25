class initialization
gsScripts
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    (scripts at: 'input')
        at: 'ar'
            put:
                'instance
{1. 2. 3. { 1. 2. {1. 2. }. 3. }. 4. }
%';
        at: 'boom'
            put:
                'run
| coll |
coll := #(1 2 3 4).
[1 halt] value.
^coll collect: [:each | each printString ].
%
edit stack';
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