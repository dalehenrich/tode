accessing
accumulateTextAndDo: accumulateBlock
    self accumulateBlocks add: accumulateBlock.
    self topezClientForwarder accumulateTextAndServerDo: accumulateBlock asOop