private
parseNonOptionArgs: nonOptionArgsBlock
  [ stream atEnd ]
    whileFalse: [ 
      self
        parseArgToken: [ :token | 
          token isEmpty
            ifFalse: [ nonOptionArgsBlock value: token ] ] ]