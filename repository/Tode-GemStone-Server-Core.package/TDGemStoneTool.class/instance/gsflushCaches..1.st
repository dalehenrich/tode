as yet unclassified
gsflushCaches
  "
  gs flushCaches [--hard]
"

  self getSubcommandOptsMixedLongShort: {#('hard' nil #'none')}.
  self gsFlushCaches: (subOptions includesKey: 'hard')