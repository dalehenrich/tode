accessing
windowLocation
  windowLocation ifNil: [ windowLocation := #'app1' ].
  ^ windowLocation