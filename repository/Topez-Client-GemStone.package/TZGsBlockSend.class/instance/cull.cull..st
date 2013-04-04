accessing
cull: arg1 cull: arg2
  ^ self
    perform: [ 
      self session
        rawReceiverNB: self blockOopType
        perform: #'cull:cull:'
        withArgs:
          {arg1.
          arg2} ]