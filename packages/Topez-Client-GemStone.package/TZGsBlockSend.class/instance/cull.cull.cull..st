accessing
cull: arg1 cull: arg2 cull: arg3
  ^ self
    perform: [ 
      self session
        rawReceiverNB: self blockOopType
        perform: #'cull:cull:cull:'
        withArgs:
          {arg1.
          arg2.
          arg3} ]