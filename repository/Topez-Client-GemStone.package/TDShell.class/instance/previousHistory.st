evaluator engine
previousHistory
  | editor windowMorph |
  self history size = 0
    ifTrue: [ ^ self ].
  historyIndex > history size ifTrue: [ historyIndex := history size].
  self
    installHistoryEntry: (history at: historyIndex)
    windowMorph: self shellWindow paneMorphs first.
  historyIndex := (historyIndex - 1 max: 1) min: history size