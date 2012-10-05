api
stackFor: contextProxy
    | stack topezStack |
    stack := contextProxy header native stack.
    topezStack := TZStack new: stack size.
    1 to: stack size do: [ :index | 
        | frame |
        frame := TZNativeStackFrame new
            context: (stack at: index);
            frameIndex: index;
            yourself.
        topezStack at: index put: frame ].
    ^ topezStack