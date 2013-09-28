as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | entry offset highlightIndex |
  offset := 0.
  self object parentEntry ifNotNil: [ offset := 1 ].
  index == offset
    ifTrue: [ 
      entry := self object parentEntry.
      highlightIndex := self object parentIndex ]
    ifFalse: [ 
      entry := self clientArray at: index - offset.
      entry == self object
        ifFalse: [ 
          entry
            parentEntry: self object;
            parentIndex: index ] ].
  entry method
    editUsing: (TDEditorSpec topez: listElement topez editorAspect: #'method').
  entry
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'profMonResults')
        highlightIndex: highlightIndex;
        yourself).
  ^ nil