accessing
windowName
  windowName ifNil: [ windowName := #'mergeBrowser' ].
  ^ windowName