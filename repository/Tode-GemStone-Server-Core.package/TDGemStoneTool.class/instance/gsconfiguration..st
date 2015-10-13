as yet unclassified
gsconfiguration: reportType
  reportType == #'gem'
    ifTrue: [ ^ System gemConfigurationReport ].
  reportType == #'stone'
    ifTrue: [ ^ System stoneConfigurationReport ].
  self error: 'Unknown reportType (#gem, #stone): ' , reportType printString