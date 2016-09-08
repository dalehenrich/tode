as yet unclassified
baseNodeMap
  | map |
  map := Dictionary new.
  map
    add: '(context)' -> #'method';
    yourself.
  self isMethodForBlock
    ifTrue: [ 
      self rawReceiver ~~ self frameSelf
        ifTrue: [ 
          map
            add: '(receiver)' -> #'receiver';
            add: '(self)' -> #'frameSelf';
            yourself ]
        ifFalse: [ map add: '(self)' -> #'frameSelf' ].
      map
        add: '(home)' -> #'homeMethod';
        yourself ]
    ifFalse: [ 
      map
        add: '(self)' -> #'receiver';
        yourself ].
  ^ map