evaluator engine
accumulateTextAndDo: resultBlock
  self stateStack
    addFirst:
      {inputStream.
      (self promptString)}.
  self actionStack
    addLast: [ :input | 
      self exception: nil.
      resultBlock value: input ].
  inputStream := WriteStream on: String new.
  promptString := ''