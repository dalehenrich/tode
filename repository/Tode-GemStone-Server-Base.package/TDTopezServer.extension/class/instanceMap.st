*tode-gemstone-server-base
instanceMap
  | singleton |
  singleton := SessionTemps current at: #'TDTopezServer_InstanceMap' otherwise: nil.
  singleton == nil
    ifTrue: [ 
      singleton := Dictionary new.
      SessionTemps current at: #'TDTopezServer_InstanceMap' put: singleton ].
  ^ singleton