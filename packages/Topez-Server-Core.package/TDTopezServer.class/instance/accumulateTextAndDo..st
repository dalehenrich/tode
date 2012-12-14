accessing
accumulateTextAndDo: aBlock
    self topezClientForwarder accumulateTextAndServerDo: aBlock asOop.
    ^ lastResult