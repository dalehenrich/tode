accessing
username
  "Return the value of the instance variable 'username'."

  ^ username
    ifNil: [ 
      GsCurrentSession currentSession userProfile userId = self theClass userId
        ifTrue: [ 
          "logged in user should not have username defined 
           -- non-nil username indicates a class from another user altogether"
          nil ]
        ifFalse: [ username := self theClass userId ] ]