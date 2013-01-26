accessing
accumulateTextAndDo: accumulateBlock
  self evaluatingScript
    ifTrue: [ 
      accumulateScriptText := true.
      self halt ].
  self accumulateBlocks add: accumulateBlock.
  self topezClientForwarder accumulateTextAndServerDo: accumulateBlock asOop