accessing
windowStatus
  windowStatus ifNil: [ windowStatus := TDWindowStatus new ].
  ^ windowStatus