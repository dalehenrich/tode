private
runInstanceNoError: doit
    ^ self
        runInstance: doit
        onError: [ :ex | self error: 'Unexpected error: ' , ex description ]
        onBreakpoint: [ :ex | self error: 'Unexpected breakpoint: ' , ex description ]