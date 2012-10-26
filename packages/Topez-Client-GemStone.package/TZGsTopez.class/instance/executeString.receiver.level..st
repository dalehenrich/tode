private
executeString: aString receiver: receiverProxy level: level
    ^ self doInSession: [ :sess | self executeStringRaw: aString receiver: receiverProxy level: level ]