as yet unclassified
steps
    "steps <class> [class] >> <selector>"

    | sepIndex selector isMeta cls meth stepSource |
    sepIndex := tokens indexOf: '>>'.
    sepIndex == 0
        ifTrue: [ 
            "steps <class>[ class]>><selector>"
            ^ self stepsCompact ].
    selector := tokens at: sepIndex + 1.
    isMeta := sepIndex = 4.
    cls := Smalltalk at: (tokens at: 2) asSymbol.
    isMeta
        ifTrue: [ cls := cls class ].
    meth := cls compiledMethodAt: selector asSymbol.
    stepSource := self stepsForMethod: meth.
    stepSource edit: topez windowId: nil