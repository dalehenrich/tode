accessing
windowLocation
  windowLocation ifNil: [ windowLocation := #'inspector' ].
  ^ windowLocation