api
stackFor: execeptionProxy
    | stack topezStack process |
    stack := execeptionProxy context header native stack.
    process := execeptionProxy process.
    topezStack := TZStack new: stack size.
    1 to: stack size do: [ :index | 
        | frame |
        frame := TZNativeStackFrame new
            context: (stack at: index);
            frameIndex: index;
            process: process;
            yourself.
        topezStack at: index put: frame ].
    ^ topezStack