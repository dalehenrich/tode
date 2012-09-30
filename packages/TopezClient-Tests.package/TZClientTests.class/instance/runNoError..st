private
runNoError: doit
    ^ self run: doit onNotification: [ :ex | self error: 'Unexpected error: ' , ex description ]