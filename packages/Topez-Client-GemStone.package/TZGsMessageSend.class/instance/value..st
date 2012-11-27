accessing
value: arg
    ^ self perform: [ self session rawReceiverNB: self receiver perform: self selector asString withArgs: {arg} ]