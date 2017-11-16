*tode-gemstone-core3x
gshalt
  "
  gs halt -m|--almostOutOfMemory=<percent>
"

  self getSubcommandOptsMixedLongShort: {#('almostOutOfMemory' $m #'required')}.
  self subOptions
    at: 'almostOutOfMemory'
    ifPresent: [ :percent | self gshaltOnOutOfMemory: percent asNumber ]