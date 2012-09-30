private
runNoError: doit
    ^ self run: doit onNotification: [ :ex | self assert: false ]