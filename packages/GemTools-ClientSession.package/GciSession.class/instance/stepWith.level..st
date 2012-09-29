public gci calls
stepWith: processObj level: level
    "level = 0 step into
     level = 1 step over from top of stack
     level > 1 step over from level on stack"

    | result |
    self setSession.
    result := self library apiNbGciStep: (processObj asOopTypeWith: self library oopTypeClass) a: level.
    result := self getNbResultAsOop.
    ^ self library localFor: result