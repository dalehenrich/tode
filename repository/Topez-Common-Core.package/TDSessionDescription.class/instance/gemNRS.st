nrs
gemNRS
  Smalltalk
    at: #'GsNetworkResourceString'
    ifPresent: [ :cl | 
      ^ GsNetworkResourceString
        gemNRSForNetLDI: self netLDIOrNetLDIPort
        onHost: self gemHost
        gemService: self gemTask ].
  ^ '!tcp@' , self gemHost , '#netldi:' , self netLDIOrNetLDIPort , '#task!'
    , self gemTask