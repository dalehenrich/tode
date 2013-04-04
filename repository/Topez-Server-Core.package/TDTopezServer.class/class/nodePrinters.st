accessing
nodePrinters
  nodePrinters ifNil: [ nodePrinters := Dictionary new ].
  ^ nodePrinters