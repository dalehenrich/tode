accessing
modifyWindow
  ^ self rsyncOptions
    at: 'modify-window'
    ifAbsent: [ 0 ]
    ifPresent: [ :window | window ]