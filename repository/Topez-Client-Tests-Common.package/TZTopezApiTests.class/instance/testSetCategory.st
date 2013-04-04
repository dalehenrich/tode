test coding
testSetCategory
    | category x currentCategory |
    self pushPrintBlocks.
    category := 'testing'.
    self doNoError: [ self topez setCategory: category ].
    currentCategory := self topez currentCategory.
    self assert: (x := currentCategory asTopezNative) = 'testing'