commands
stepCmd: commands
    "self initialize"

    commands at: 'step' put: [ :evaluator :topez :tokens | topez stepOver: evaluator context ]