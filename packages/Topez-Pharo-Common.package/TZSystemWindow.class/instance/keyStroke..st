keyboard handling
keyStroke: evt
    "Check for close window."

    evt keyCharacter = Character escape
        ifTrue: [ 
            "switch focus back to topez window"
            ^ self model escapeKeyStroke ].
    (evt keyString = '<Ctrl-x>' or: [ evt keyString = '<Ctrl-g>'	"mac hack ... don't ask" ])
        ifTrue: [ ^ self model controlXKeyStroke ].
    (evt keyString = '<Ctrl-s>' or: [ evt keyString = '<Ctrl-a>' ])
        ifTrue: [ ^ self model controlSKeyStroke ].
    ^ super keyStroke: evt