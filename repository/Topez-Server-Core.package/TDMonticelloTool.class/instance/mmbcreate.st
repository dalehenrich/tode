as yet unclassified
mmbcreate
  "mmb create <baseline-name>"

  | baseName baselineName baselineClass |
  baseName := tokens at: 2.
  baselineName := MetacelloToolBox baselineNameFrom: baseName.
  baselineClass := MetacelloPlatform current
    globalNamed: baselineName asSymbol
    ifAbsent: [ ^ MetacelloToolBox baselineNamed: baselineName ].
  ^ baselineClass project