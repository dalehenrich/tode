accessing
username
  "Return the value of the instance variable 'username'."

  ^ username ifNil: [ username := self theClass userId ]