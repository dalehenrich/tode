running
tearDown
    super tearDown.
    self popPrintBlocks.
    evaluator ifNotNil: [ self evaluator exit ].
    TZEvaluator debugMode: debugMode