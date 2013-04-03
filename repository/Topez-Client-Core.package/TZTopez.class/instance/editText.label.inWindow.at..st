editting
editText: aStringOrText label: labelString inWindow: windowIdOrNil at: windowLocation
    ^ self
        editTextElement:
            (TZTextElement new
                source: aStringOrText;
                yourself)
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation