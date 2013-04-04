private
run: doit onError: errorBlock
    ^ self run: doit onError: errorBlock onBreakpoint: [ :ex | self error: 'Unexpected breakpoint: ' , ex description ]