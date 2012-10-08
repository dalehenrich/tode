api
setClass: aString
    | proxy |
    proxy := self run: 'Smalltalk classNamed: ' , aString printString.
    self status currentClass: proxy.
    ^ proxy