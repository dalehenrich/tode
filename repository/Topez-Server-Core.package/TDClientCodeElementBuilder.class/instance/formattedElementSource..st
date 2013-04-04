as yet unclassified
formattedElementSource: elementSource
  self formatOnAccept ~~ false
    ifTrue: [ ^ self formatSource: elementSource ].
  ^ elementSource