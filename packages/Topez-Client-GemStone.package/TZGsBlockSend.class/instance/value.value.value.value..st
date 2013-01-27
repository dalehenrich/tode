accessing
value: arg1 value: arg2 value: arg3 value: arg4
  ^ self
    perform: [ 
      self numArgs ~= 4
        ifTrue: [ ^ self error: 'incorrect block args' ].
      self session
        rawReceiverNB: self blockOopType
        perform: #'value:value:value:value:'
        withArgs:
          {arg1.
          arg2.
          arg3.
          arg4} ]