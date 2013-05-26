evaluator engine
addToHistory: line
  self history add: line.
  historyIndex := self history size