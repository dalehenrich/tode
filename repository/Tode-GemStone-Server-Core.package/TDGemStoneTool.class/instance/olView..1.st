ol
olView
  ^ self
    olView: [ 
      System commitTransaction.
      ObjectLogEntry objectLog ]
    reversed: false
    label: 'Object log'