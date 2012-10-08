api
send: selector to: receiverProxy withArgs: arguments
    ^ (receiverProxy native perform: selector asSymbol withArguments: arguments) asTopezProxy