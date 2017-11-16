commands
gsversion: reportType
  reportType == #'client'
    ifTrue: [ ^ System clientVersionReport ].
  reportType == #'gem'
    ifTrue: [ ^ System gemVersionReport ].
  reportType == #'stone'
    ifTrue: [ ^ System stoneVersionReport ].
  self
    error:
      'Unknown reportType (#client, #gem, #stone): ' , reportType printString