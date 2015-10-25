as yet unclassified
commandPath: aString
  aString
    ifNil: [ 
      commandPath := nil.
      ^ self ].
  commandPath := 'edit ' , aString