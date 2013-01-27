accessing
value
  ^ self perform: [ self session rawReceiverNB: self receiver perform: self selector withArgs: {} ]