as yet unclassified
argOrTempNamed: aString ifAbsent: absentBlock
  | index |
  index := self argAndTempNames indexOf: aString.
  index == 0
    ifTrue: [ ^ absentBlock value ].
  ^ self argAndTempNamesAt: index