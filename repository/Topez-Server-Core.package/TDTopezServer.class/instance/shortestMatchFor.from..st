accessing
shortestMatchFor: subString from: arrayOfStrings
  "find the shortest common substring for <arrayOfStrings> starting with <subString>"

  | shortest shortestLength max shortestMatch |
  shortest := nil.
  shortestLength := SmallInteger maximumValue.
  arrayOfStrings
    do: [ :each | 
      each size < shortestLength
        ifTrue: [ 
          shortest := each.
          shortestLength := each size ] ].
  max := subString size.
  shortestMatch := subString copy.
  subString size + 1 to: shortest size do: [ :index | 
    | char |
    char := shortest at: index.
    arrayOfStrings
      do: [ :str | 
        (str at: index) == char
          ifFalse: [ ^ shortestMatch ] ].
    shortestMatch add: char ].
  ^ shortestMatch