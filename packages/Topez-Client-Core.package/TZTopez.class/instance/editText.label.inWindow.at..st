editting
editText: aStringOrText label: labelString inWindow: windowIdOrNil at: windowLocation
    ^ self
        editCodeElement:
            (TZTextElement new
                source: aStringOrText;
                yourself)
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation