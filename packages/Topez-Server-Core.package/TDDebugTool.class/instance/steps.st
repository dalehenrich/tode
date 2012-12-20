as yet unclassified
steps
    "steps <class> [class] >> <selector>"

    "steps <class>[ class]>><selector>"

    | meth stepSource |
    meth := self lookupMethodIn: (tokens copyFrom: 2 to: tokens size).
    stepSource := self stepsForMethod: meth.
    stepSource edit: topez windowId: nil