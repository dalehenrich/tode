as yet unclassified
itemSelected: listElement at: index shiftPressed: shiftPressed
  | itemAttribute selection |
  index ifNil: [ ^ nil ].
  selection := listElement itemCache at: index.
  index <= self protocolSize
    ifTrue: [ 
      selectedProtocol := selection.
      ^ #'refreshView' ]
    ifFalse: [ selection itemSelected: listElement topez ].
  ^ true