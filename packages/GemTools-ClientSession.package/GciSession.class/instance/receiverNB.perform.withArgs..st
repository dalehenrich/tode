public gci calls
receiverNB: receiver perform: aString withArgs: argsArray
    | result |
    result := self rawReceiverNB: receiver perform: aString withArgs: argsArray.
    ^ self library localFor: result