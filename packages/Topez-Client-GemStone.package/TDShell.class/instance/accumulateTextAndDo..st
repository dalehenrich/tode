evaluator engine
accumulateTextAndDo: resultBlock
  self actionStack
    add:
      {inputStream.
      (self promptString).
      [ :input | 
      self exception: nil.
      resultBlock value: input ]}.
  inputStream := WriteStream on: String new.
  promptString := ''