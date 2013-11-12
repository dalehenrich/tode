*topez-client-gemstone
loginWith: aSessionDescription
  ^ self
    login: aSessionDescription password
    osUser:
      (aSessionDescription isGuest
        ifTrue: [ '' ]
        ifFalse: [ aSessionDescription osUserId ])
    osPassword:
      (aSessionDescription isGuest
        ifTrue: [ '' ]
        ifFalse: [ aSessionDescription osPassword ])