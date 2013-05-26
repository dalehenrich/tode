as yet unclassified
export
  Transcript
    cr;
    show: 'Export: ' , DateAndTime now printString.
  STONWriter
    plainTextNewlinesDuring: [ topez evaluateTopezScript: 'ston export . @exportFile' ]