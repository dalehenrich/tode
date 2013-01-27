accessing
cull: arg1 cull: arg2 cull: arg3 cull: arg4
  ^ self
    perform: [ 
      self session
        rawReceiverNB: self blockOopType
        perform: #'cull:cull:cull:cull:'
        withArgs:
          {arg1.
          arg2.
          arg3.
          arg4} ]