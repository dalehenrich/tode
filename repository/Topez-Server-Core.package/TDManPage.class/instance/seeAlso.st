as yet unclassified
seeAlso
  | result |
  (seeAlso == nil or: [ seeAlso isEmpty ])
    ifTrue: [ seeAlso := '' ].
  result := seeAlso.
  commandPath ifNotNil: [ result := result , self commandPath , String lf ].
  sourceMethod ifNotNil: [ result := result , self sourceMethod , String lf ].
  ^ result