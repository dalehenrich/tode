windows
windowsrestore
  "
  windows restore
"

  | sortedClientElements age |
  self getSubcommandOptsMixedLongShort: {#('age' nil #'required')}.
  sortedClientElements := (TDTopezServer persistentElementCacheStack at: 2)
    sorted: [ :a :b | a timestamp < b timestamp ].
  sortedClientElements isEmpty not
    ifTrue: [ 
      subOptions
        at: 'age'
        ifPresent: [ :durationExpression | 
          | last |
          last := sortedClientElements last timestamp.
          age := last - durationExpression evaluate.
          sortedClientElements := sortedClientElements
            select: [ :ce | ce timestamp > age ] ] ].
  sortedClientElements := sortedClientElements
    collect: [ :ce | 
      | cpy |
      cpy := ce copy.
      cpy topez: self topez.
      cpy ].
  sortedClientElements do: [ :ce | self topez editElement: ce ].
  ^ sortedClientElements