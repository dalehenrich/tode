menu commands
drawOn: aCanvas
    "Indicate which Evaluator you are running on"

    super drawOn: aCanvas.
    true
        ifTrue: [ self theme drawTopezAdornmentFor: self color: self adornmentColor on: aCanvas ]