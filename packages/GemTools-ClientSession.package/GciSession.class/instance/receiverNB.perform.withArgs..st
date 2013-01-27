public gci calls
receiverNB: receiver perform: aSymbol withArgs: argsArray
  | result |
  result := self rawReceiverNB: receiver perform: aSymbol withArgs: argsArray.
  ^ self library localFor: result