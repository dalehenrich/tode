accessing
displayPolicy
  ^ TDDisplayPolicy
    stream: nil
    characterLimit: self characterLimit
    listLimit: self listLimit
    displayOops: self displayOops
    compacted: false