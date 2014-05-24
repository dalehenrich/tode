accessing
windowLocation
  windowLocation ifNil: [ windowLocation := #'app2' ].
  ^ windowLocation