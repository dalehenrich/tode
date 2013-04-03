accessing
listKeystroke: event
  | action |
  event keyCharacter = Character arrowUp
    ifTrue: [ ^ self listKeystrokeUp ].
  event keyCharacter = Character arrowDown
    ifTrue: [ ^ self listKeystrokeDown ].
  event keyCharacter = Character arrowLeft
    ifTrue: [ ^ self listKeystrokeLeft ].
  event keyCharacter = Character arrowUp
    ifTrue: [ ^ self listKeystrokeUp ].
  action := self clientElement handleKeyboardEvent: event selectionIndex: self listIndex.
  action isSymbol
    ifTrue: [ ^ self perform: action ].
  action isString
    ifTrue: [ 
      | ar element |
      ar := STON fromString: action.
      element := (ar at: 2)
        topez: self topez;
        yourself.
      ^ self perform: (ar at: 1) with: element ].
  ^ action