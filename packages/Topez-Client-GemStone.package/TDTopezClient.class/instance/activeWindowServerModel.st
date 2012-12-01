as yet unclassified
activeWindowServerModel
    | model clientElement |
    model := self windowStatus activeWindowModel.
    model == nil
        ifTrue: [ ^ nil ].
    clientElement := model activeEditor clientElement.
    clientElement == nil
        ifTrue: [ ^ nil ].
    ^ clientElement serverElementOop