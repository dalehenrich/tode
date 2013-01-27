accessing
accumulateTextAndDo: accumulateBlock
  self evaluatingScript
    ifTrue: [ 
      self scriptActionStack
        add:
          {scriptInputStream.
          accumulateScriptText.
          [ :input :accumulateObjIn | 
          self exception: nil.
          accumulateBlock value: input value: accumulateObjIn ]}.
      scriptInputStream := WriteStream on: String new.
      accumulateScriptText := true.
      ^ self ].
  self accumulateBlocks add: accumulateBlock.
  self topezClientForwarder accumulateTextAndServerDo: accumulateBlock asOop objIn: objIn value asOop