as yet unclassified
topez
  topez
    ifNil: [ 
      topez := (TDTopezServer for: 1000)
        displayOops: false;
        characterLimit: 160;
        listLimit: 120;
        topezClientForwarder: TDTestClientForwarder new;
        yourself ].
  ^ topez