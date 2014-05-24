accessing
windowLocation
  windowLocation ifNil: [ windowLocation := #'implementors' ].
  ^ windowLocation