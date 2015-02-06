accessing
windowLocation
  windowLocation ifNil: [ windowLocation := #'classCategories' ].
  ^ windowLocation