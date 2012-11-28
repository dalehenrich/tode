as yet unclassified
activeWindowServerModel
    | model clientElement |
    Transcript
        cr;
        show: 'activeWindowServerModel [0]'.
    model := self windowStatus activeWindowModel.
    Transcript
        cr;
        show: 'activeWindowServerModel [1]: ' , model printString.
    model == nil
        ifTrue: [ ^ nil ].
    clientElement := model activeEditor clientElement.
    Transcript
        cr;
        show: 'activeWindowServerModel [2]: ' , clientElement printString.
    clientElement == nil
        ifTrue: [ ^ nil ].
    Transcript
        cr;
        show: 'activeWindowServerModel [3]: ' , clientElement serverElementOop printString.
    ^ clientElement serverElementOop