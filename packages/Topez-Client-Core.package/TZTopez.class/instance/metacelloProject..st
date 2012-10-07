metacello
metacelloProject: projectBaseName
    ^ self run: 'Metacello image project: ' , projectBaseName printString , '; list'