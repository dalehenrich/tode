as yet unclassified
argOrTempNamed: aString
  | index |
  index := self argAndTempNames indexOf: aString.
  index == 0
    ifTrue: [ self error: 'no arg or temp named: ' , aString printString ].
  ^ self argAndTempNamesAt: index