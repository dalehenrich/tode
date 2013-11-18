as yet unclassified
resolveWorkingCopyReference: packageName
  ^ self
    resolveWorkingCopyReference: packageName
    ifAbsent: [ ^ self error: 'No package named ' , packageName printString , ' found.' ]