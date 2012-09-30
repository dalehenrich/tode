running
tearDown
    super tearDown.
    self topez logout.
    TZHeaderObject printBlocks: (printBlocks at: 1).
    TZProxyObject printBlocks: (printBlocks at: 2)