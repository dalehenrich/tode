evaluator engine
nextHistory
  self history size = 0
    ifTrue: [ ^ self ].
  historyIndex := (historyIndex + 1 min: history size + 2) max: 2.
  history size + 1 < historyIndex
    ifTrue: [ self installHistoryEntry: '' windowMorph: self shellWindow paneMorphs first ]
    ifFalse: [ 
      self
        installHistoryEntry: (history at: historyIndex - 1)
        windowMorph: self shellWindow paneMorphs first ]