as yet unclassified
gshalt
  "
  gs halt -m|--almostOutOfMemory=<percent>
"

  self getSubcommandOptsMixedLongShort: {#('almostOutOfMemory' $m #'required')}.
  self subOptions
    at: 'almostOutOfMemory'
    ifPresent: [ :percent | self gshaltOnOutOfMemory: percent ]