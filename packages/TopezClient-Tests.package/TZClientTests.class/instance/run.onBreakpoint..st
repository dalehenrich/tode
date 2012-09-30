private
run: doit onBreakpoint: breakpointBlock
    ^ self run: doit onError: [ :ex | self error: 'Unexpected error: ' , ex description ] onBreakpoint: breakpointBlock