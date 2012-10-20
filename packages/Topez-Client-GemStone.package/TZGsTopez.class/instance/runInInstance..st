private
runInInstance: aString
    ^ self executeString: aString receiver: self instance level: self level