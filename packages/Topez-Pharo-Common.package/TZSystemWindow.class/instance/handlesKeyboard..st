keyboard handling
handlesKeyboard: evt
    "Return true if the receiver wishes to handle the given keyboard event"

    (super handlesKeyboard: evt)
        ifTrue: [ ^ true ].
    ^ evt keyCharacter = Character escape or: [ evt keyString = '<Ctrl-x>' ]