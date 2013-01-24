as yet unclassified
topez
  topez
    ifNil: [ 
      topez := (TDTopezServer for: 1000)
        displayOops: false;
        yourself ].
  ^ topez