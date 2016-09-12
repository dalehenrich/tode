private
baseNodeMap
  | map |
  map := Dictionary new.
  map
    add: '(context)' -> #'methodOop';
    yourself.
  self isMethodForBlock
    ifTrue: [ 
      self rawReceiverOop ~~ self frameSelfOop
        ifTrue: [ 
          map
            add: '(receiver)' -> #'receiverOop';
            add: '(self)' -> #'frameSelfOop';
            yourself ]
        ifFalse: [ map add: '(self)' -> #'frameSelfOop' ].
      map
        add: '(home)' -> #'homeMethodOop';
        yourself ]
    ifFalse: [ 
      map
        add: '(self)' -> #'receiverOop';
        yourself ].
  ^ map