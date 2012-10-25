editting
editDoIt: aStringOrText inClass: classProxy label: labelString inWindow: windowIdOrNil at: windowLocation
    ^ self
        editCodeElement:
            (TZDoItElement new
                elementClass: classProxy;
                elementClassName: classProxy asTopezProxy proxyClassName;
                source: aStringOrText;
                yourself)
        label: labelString
        inWindow: windowIdOrNil
        at: windowLocation