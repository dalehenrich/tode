as yet unclassified
runLintCheckIn: evaluator projectNode: projectNode topez: topez tokens: tokens
    ^ self
        runLintCheckIn: evaluator
        projectNode: projectNode
        rule: (RBCompositeLintRule rules: (RBCompositeLintRule rulesGroupedFor: RBBasicLintRule) name: 'Lint checks')
        topez: topez
        tokens: tokens