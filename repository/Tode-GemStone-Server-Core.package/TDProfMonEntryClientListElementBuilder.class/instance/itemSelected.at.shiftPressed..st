as yet unclassified
itemSelected: listElement at: listIndex shiftPressed: shiftPressed
  | index entry offset highlightIndex |
  listIndex <= 4
    ifTrue: [ ^ nil ].
  index := listIndex - 4.
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
            parentIndex: listIndex ] ].
  entry method
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'method')
        windowName: 'profMonSource';
        yourself).
  entry
    editUsing:
      ((TDEditorSpec topez: listElement topez editorAspect: #'profMonResults')
        highlightIndex: highlightIndex;
        yourself).
  ^ nil