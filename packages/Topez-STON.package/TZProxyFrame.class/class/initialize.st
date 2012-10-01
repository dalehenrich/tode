class initialization
initialize
    "self initialize"

    super initialize.
    self printBlocks at: #'basic' put: [ :proxy :aStream :indent | proxy printSummaryOn: aStream indent: indent ]