accessing
windowLocation
  windowLocation ifNil: [ windowLocation := #'debugger' ].
  ^ windowLocation