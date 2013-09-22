accessing
protocol
  "Return the value of the instance variable 'protocol'."

  protocol ifNil: [ protocol := ClassOrganizer default ].
  ^ protocol