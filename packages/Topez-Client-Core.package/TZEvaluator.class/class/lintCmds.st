command definition
lintCmds
    "TZGsEvaluator initialize.
	TZNativeEvaluator initialize"

    commands
        at: 'lint'
            put: [ :evaluator :topez :tokens | 
                    | projectNode |
                    projectNode := topez lookup: (tokens at: 2).
                    tokens size = 2
                        ifTrue: [ 
                            TZLintChecker
                                runLintCheckIn: evaluator
                                projectNode: projectNode
                                topez: topez
                                tokens: tokens ]
                        ifFalse: [ 
                            | rule |
                            "(RBCompositeLintRule rulesFor: RBInstVarInSubclassesRule)"
                            (tokens at: 3) = 'topez'
                                ifTrue: [ 
                                    rule := RBCompositeLintRule
                                        rules:
                                            (RBCompositeLintRule rulesFor: RBTempVarOverridesInstVarRule)
                                                , (RBCompositeLintRule rulesFor: RBUndeclaredReferenceRule)
                                        name: 'Topez checks' ]
                                ifFalse: [ self error: 'unknown lint option: ' , (tokens at: 2) printString ].
                            TZLintChecker
                                runLintCheckIn: evaluator
                                projectNode: projectNode
                                rule: rule
                                topez: topez
                                tokens: tokens ] ];
        yourself