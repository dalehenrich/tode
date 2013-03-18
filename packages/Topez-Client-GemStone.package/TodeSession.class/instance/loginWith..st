accessing
loginWith: aSessionDescription
  self sessionDescription: aSessionDescription.
  ^ self
    login: self sessionDescription password
    osUser:
      (self sessionDescription isGuest
        ifTrue: [ '' ]
        ifFalse: [ self sessionDescription osUserId ])
    osPassword:
      (self sessionDescription isGuest
        ifTrue: [ '' ]
        ifFalse: [ self sessionDescription osPassword ])