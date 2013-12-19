as yet unclassified
gshalt
  "
  gs halt -m|--almostOutOfMemory=<percent>
"

  | opts |
  self
    getOptsMixedLongShort:
      {#('help' $h #'none').
      #('almostOutOfMemory' $m #'required')}.
  opts := self options.
  opts
    at: 'almostOutOfMemory'
    ifPresent: [ :percent | 
      AlmostOutOfMemory enableAtThreshold: percent asNumber.
      AlmostOutOfMemory
        addDefaultHandler: [ :ex | 
          self halt.
          ex resume ] ]