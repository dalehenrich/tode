accessing
accumulateTextAndDo: accumulateBlock
  self evaluatingScript
    ifTrue: [ 
      self scriptActionStack
        add:
          {scriptInputStream.
          accumulateScriptText.
          [ :input | 
          self exception: nil.
          accumulateBlock value: input ]}.
      scriptInputStream := WriteStream on: String new.
      accumulateScriptText := true.
      ^ self ].
  self accumulateBlocks add: accumulateBlock.
  self topezClientForwarder accumulateTextAndServerDo: accumulateBlock asOop