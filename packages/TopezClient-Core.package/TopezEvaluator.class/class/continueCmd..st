commands
continueCmd: commands
    "self initialize"

    commands at: 'continue' put: [ :evaluator :topez :tokens | topez continueWith: evaluator context ]