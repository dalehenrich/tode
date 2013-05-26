class initialization
initializeSessionMap
  "self initializeSessionMap"

  | dict |
  dict := Dictionary new.
  (Pragma allNamed: #'sessionDescription' in: self class)
    do: [ :pragma | 
      | sessionDescription |
      sessionDescription := self perform: pragma selector.
      dict at: sessionDescription name put: sessionDescription ].
  SessionMap := dict