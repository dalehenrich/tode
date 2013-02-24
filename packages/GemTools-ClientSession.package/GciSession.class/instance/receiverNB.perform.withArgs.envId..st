public gci calls
receiverNB: receiver perform: aSymbol withArgs: argsArray envId: envId
  | result |
  result := self
    rawReceiverNB: receiver
    perform: aSymbol
    withArgs: argsArray
    envId: envId.
  ^ self library localFor: result