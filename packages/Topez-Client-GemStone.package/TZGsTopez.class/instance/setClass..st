api
setClass: aString
    | proxy oop |
    proxy := self executeString: 'Smalltalk classNamed: ' , aString printString receiver: nil level: 0.
    oop := self session asOopType: proxy.
    oop = self session library oopNil
        ifTrue: [ self error: 'the class: ' , aString printString , ' does not exist' ].
    self status currentClass: proxy.
    ^ proxy