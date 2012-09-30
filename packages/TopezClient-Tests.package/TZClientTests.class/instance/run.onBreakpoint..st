private
run: doit onBreakpoint: breakpointBlock
    ^ self run: doit onError: [ :ex | self assert: false ] onBreakpoint: breakpointBlock