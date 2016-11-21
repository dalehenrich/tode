as yet unclassified
baseNodeMap
  | map hasSelf |
  map := Dictionary new.
  map
    add: '(context)' -> #'method';
    yourself.
  hasSelf := self argAndTempNames includes: 'self'.
  self isMethodForBlock
    ifTrue: [ self rawReceiver ~~ self frameSelf
        ifTrue: [ map add: '(receiver)' -> #'rawReceiver'.
          hasSelf
            ifFalse: [ map add: '(self)' -> #'rawSelf' ] ]
        ifFalse: [ map add: '(self)' -> #'rawSelf' ].
      map
        add: '(home)' -> #'homeMethod';
        yourself ]
    ifFalse: [ hasSelf
        ifFalse: [ map
            add: '(self)' -> #'receiver';
            yourself ] ].
  ^ map