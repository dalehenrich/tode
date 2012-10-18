*topez-pharo-common
drawTopezAdornmentFor: aTZMorph color: aColor on: aCanvas
    "Indicate edit status for the given morph."

    aCanvas frameRectangle: (aTZMorph innerBounds insetBy: 10) width: 2 color: aColor