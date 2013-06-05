as yet unclassified
rm
  "rm <path> [ <path> ... ]"

  2 to: tokens size do: [ :index | (topez lookup: (tokens at: index)) rm ].
  ^ topez currentNode