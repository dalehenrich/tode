tools
selectEntryMatchingSHA: listElement selectionIndex: index
  | entry theSHA offset gitTool theIndex |
  theSHA := (GsTextInteraction prompt: 'Enter SHA of commit' template: '')
    signal.
  theSHA ifNil: [ ^ false ].
  entry := self history
    detect: [ :oneline | 
      | sha |
      offset := oneline indexOf: Character space.
      sha := oneline copyFrom: 1 to: offset - 1.
      theSHA size > sha size
        ifTrue: [ theSHA beginsWith: sha ]
        ifFalse: [ sha beginsWith: theSHA ] ]
    ifNone: [ 
      self
        inform:
          'No matching SHA found ... you may need to increase the limit on `project log` command'.
      ^ false ].
  theIndex := self history indexOf: entry.
  ^ self objectSerializer
    toString:
      {#'listIndex:'.
      theIndex}