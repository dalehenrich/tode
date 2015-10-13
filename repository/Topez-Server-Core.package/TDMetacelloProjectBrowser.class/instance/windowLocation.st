accessing
windowLocation
  windowLocation ifNil: [ windowLocation := #'projectList' ].
  ^ windowLocation