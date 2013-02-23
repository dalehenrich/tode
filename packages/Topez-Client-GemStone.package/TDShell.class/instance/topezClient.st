accessing
topezClient
  topezClient
    ifNil: [ 
      topezClient := self topezClientClass new
        shell: self;
        yourself ].
  ^ topezClient