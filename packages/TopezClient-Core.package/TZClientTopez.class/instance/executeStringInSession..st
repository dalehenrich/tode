private
executeStringInSession: aString
    "answer an instance of TZTopezProxy"

    ^ self doInSession: [ self session executeStringNB: aString ]