accessing
escapeKeyStroke
    | evaluator |
    evaluator := self topez windowAt: (self topez namedWindows at: #'evaluator' ifAbsent: [ ^ false ]).
    evaluator activate.
    ^ true