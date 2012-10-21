menu messages
selectedSymbol
    "Return the currently selected string or symbol, or nil if none.  Spaces, tabs and returns are ignored"

    | aString |
    self hasCaret
        ifTrue: [ ^ nil ].
    aString := self selection string
        copyWithoutAll:
            {(Character space).
            (Character cr).
            (Character tab)}.
    aString size = 0
        ifTrue: [ ^ nil ].
    Symbol hasInterned: aString ifTrue: [ :sym | ^ sym ].	"string is necessary for references to instance variables"
    ^ aString