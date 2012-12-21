accessing
windowStatus
  windowStatus
    ifNil: [ 
      windowStatus := TDWindowStatus new.
      self windowRegistration ].
  ^ windowStatus