evaluator engine
nextHistory
  self history size = 0
    ifTrue: [ ^ self ].
  historyIndex <= 1
    ifTrue: [ historyIndex := 2 ].
  history size + 1 <= historyIndex
    ifTrue: [ self installHistoryEntry: '' windowMorph: self shellWindow paneMorphs first ]
    ifFalse: [ 
      self
        installHistoryEntry: (history at: historyIndex)
        windowMorph: self shellWindow paneMorphs first ].
  historyIndex := (historyIndex + 1 max: 1) min: history size + 1