api
setClass: aString
    ^ self status currentClass: (self run: 'Smalltalk classNamed: ' , aString printString)