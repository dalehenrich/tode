keyboard handling
keyStroke: evt
    "Check for close window."

    evt keyCharacter = Character escape
        ifTrue: [ 
            "switch focus back to topez window"
            ^ self model escapeKeyStroke ].
    evt keyString = '<Ctrl-x>'
        ifTrue: [ ^ self model controlXKeyStroke ].
    super keyStroke: evt.
    ^ false