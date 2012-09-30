private
run: doit onError: errorBlock
    ^ self run: doit onError: errorBlock onBreakpoint: [ :ex | self assert: false ]