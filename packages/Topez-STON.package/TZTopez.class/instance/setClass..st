api
setClass: aString
    ^ currentClass := self run: 'Smalltalk classNamed: ' , aString printString