nrs
gemNRS
  Smalltalk
    at: #'GsNetworkResourceString'
    ifPresent: [ :cl | 
      ^ cl
        perform: #'gemNRSForNetLDI:onHost:gemService:'
        withArguments:
          {(self netLDIOrNetLDIPort).
          (self gemHost).
          (self gemTask)} ].
  ^ '!tcp@' , self gemHost , '#netldi:' , self netLDIOrNetLDIPort , '#task!'
    , self gemTask