class initialization
initializeSessionMap
  "self initializeSessionMap"

  | dict |
  dict := Dictionary new.
  {(self sessionDescription2441_mac).
  (self sessionDescription3101_mac).
  (self sessionDescription3101tODE).
  (self sessionDescription_c3101).
  (self sessionDescription_c3101_mac).
  (self sessionDescription_k).
  (self sessionDescription_k_mac).
  (self sessionDescription_r_mac).
  (self sessionDescription3101sample).
  (self sessionDescription_r)}
    do: [ :sessionDescription | dict at: sessionDescription name put: sessionDescription ].
  SessionMap := dict