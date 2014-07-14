as yet unclassified
seeAlso
  (seeAlso == nil or: [ seeAlso isEmpty ])
    ifTrue: [ seeAlso := '' ].
  (commandPath notNil or: [ sourceMethod notNil ])
    ifTrue: [ seeAlso := seeAlso , self commandPath , String lf , '  ' , self sourceMethod ].
  ^ seeAlso