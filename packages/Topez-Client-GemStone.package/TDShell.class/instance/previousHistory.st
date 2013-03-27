evaluator engine
previousHistory
  | editor windowMorph |
  self history size = 0
    ifTrue: [ ^ self ].
  historyIndex := (historyIndex - 1 max: 0) min: history size - 1.
  self
    installHistoryEntry: (history at: historyIndex + 1)
    windowMorph: self shellWindow paneMorphs first