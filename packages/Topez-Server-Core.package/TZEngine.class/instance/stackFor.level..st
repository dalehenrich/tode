debugging
stackFor: aGsProcess level: level
    | stack stream writer |
    stack := TZStack new.	"    1 to: aGsProcess stackDepth do: [ :frameIndex | stack add: (TZStackFrame for: aGsProcess at: frameIndex) ]."
    1 to: aGsProcess stackDepth do: [ :frameIndex | stack add: (self createStackFrameElementFor: aGsProcess at: frameIndex level: level) ].
    ^ self toString: stack level: level + 1