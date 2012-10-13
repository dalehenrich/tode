api
setClass: aString
    | proxy |
    proxy := self run: 'Smalltalk classNamed: ' , aString printString.
    proxy asTopezNative ifNil: [self error: 'the class: ', aString printString, ' does not exist'].
    self status currentClass: proxy.
    ^ proxy