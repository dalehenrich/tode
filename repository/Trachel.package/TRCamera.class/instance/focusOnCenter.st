actions
focusOnCenter
    "Do nothing if no shape are present."

    canvas numberOfShapes = 0
        ifTrue: [ ^ self ].
    self translateTo: (self encompassingRectangle in: [ :eR | (eR topLeft + eR bottomRight) / 2 ]) "Need to get the center by ourselves since Rectangle>>center truncate the result."