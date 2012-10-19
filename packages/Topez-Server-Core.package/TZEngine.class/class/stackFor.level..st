debugging
stackFor: aGsProcess level: level
    | stack stream writer |
    stack := TZStack new.
    1 to: aGsProcess stackDepth do: [ :frameIndex | stack add: (TZStackFrame for: aGsProcess at: frameIndex) ].
    ^ self toString: stack level: level