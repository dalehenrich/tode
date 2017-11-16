windows
windowsrestore
  "
  windows restore [--age=<duration>]
"

  | sortedClientElements age |
  self getSubcommandOptsMixedLongShort: {#('age' nil #'required')}.
  self topez persistentElementCache.	"make sure that persistentElementCacheStack is primed"
  sortedClientElements := (TDTopezServer persistentElementCacheStack at: 2)
    sorted: [ :a :b | a timestamp < b timestamp ].
  sortedClientElements isEmpty not
    ifTrue: [ subOptions at: 'age' ifPresent: [ :durationExpression | | last |
          last := sortedClientElements last timestamp.
          age := last
            - (self topez todeEnvironment evaluate: durationExpression).
          sortedClientElements := sortedClientElements
            select: [ :ce | ce timestamp > age ] ] ].
  sortedClientElements := sortedClientElements collect: [ :ce | | cpy |
      cpy := ce copy.
      cpy topez: self topez.
      cpy ].
  sortedClientElements do: [ :ce | self topez
        cacheClientElement: ce;
        editElement: ce ].
  ^ sortedClientElements