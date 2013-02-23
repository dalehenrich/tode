class initialization
initializeSessionMap
  "self initializeSessionMap"

  | dict |
  dict := Dictionary new.
  {(self sessionDescription3101).
  (self sessionDescription3101tODE).
  (self sessionDescription_c3101).
  (self sessionDescription_k).
  (self sessionDescription3101sample)}
    do: [ :sessionDescription | dict at: sessionDescription name put: sessionDescription ].
  SessionMap := dict