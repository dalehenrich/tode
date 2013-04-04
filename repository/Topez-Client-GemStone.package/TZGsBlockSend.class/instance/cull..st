accessing
cull: arg
  ^ self perform: [ self session rawReceiverNB: self blockOopType perform: #'cull:' withArgs: {arg} ]