as yet unclassified
testToolCommands
  self toolCommandFixtures
    do: [ :ar | 
      | tool expected actual tokens command |
      tokens := ar at: 1.
      command := ar at: 2.
      expected := ar at: 3.
      tool := self toolClass
        topez: self topez
        objIn: nil
        tokens: tokens
        windowId: nil.
      actual := tool perform: command.
      self assert: expected = actual ]