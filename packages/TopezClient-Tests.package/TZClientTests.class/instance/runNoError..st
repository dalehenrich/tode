private
runNoError: doit
    ^ self run: doit onError: [ :ex | self assert: false ]