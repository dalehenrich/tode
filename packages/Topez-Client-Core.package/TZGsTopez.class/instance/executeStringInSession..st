private
executeStringInSession: aString
    "answer an instance of TZTopezProxy"

    ^ self doInSession: [ :sess | sess executeStringNB: aString ]