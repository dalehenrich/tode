command definition
lintCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'lint'
            put: [ :evaluator :topez :tokens | TZLintChecker runLintCheckIn: evaluator topez: topez tokens: tokens ];
        yourself