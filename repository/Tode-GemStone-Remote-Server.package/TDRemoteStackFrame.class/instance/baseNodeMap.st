private
baseNodeMap
  | map |
  map := Dictionary new.
  map
    add: '(context)' -> #'method';
    yourself.
  self isMethodForBlock
    ifTrue: [ 
      self rawReceiverOop ~~ self frameSelfOop
        ifTrue: [ 
          map
            add: '(receiver)' -> #'receiver';
            add: '(self)' -> #'frameSelf';
            yourself ]
        ifFalse: [ map add: '(self)' -> #'frameSelf' ] ]
    ifFalse: [ 
      map
        add: '(self)' -> #'receiver';
        yourself ].
  ^ map