private
runNoError: doit
    ^ self
        run: doit
        onError: [ :ex | self error: 'Unexpected error: ' , ex description ]
        onBreakpoint: [ :ex | self error: 'Unexpected breakpoint: ' , ex description ]