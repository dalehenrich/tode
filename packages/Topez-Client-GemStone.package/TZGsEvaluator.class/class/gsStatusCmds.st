class initialization
gsStatusCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'abort' put: [ :evaluator :topez :tokens | topez abort ];
        at: 'commit' put: [ :evaluator :topez :tokens | topez commit ];
        yourself