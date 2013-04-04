as yet unclassified
formattedElementSource
  | elementSource |
  elementSource := self elementSource.
  self formatOnDisplay ~~ false
    ifTrue: [ ^ self formatSource: elementSource ].
  ^ elementSource