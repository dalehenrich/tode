accessing
contents
  "Answer the contents that the receiver is holding--presumably a string."

  self clientElement ifNil: [ ^ '' ].
  [ ^ self clientElement source ]
    on: TZTopezNotification
    do: [ :ex | 
      self topez exception: ex exceptionProxy.
      self error: 'server error during get: ' , ex description ].
  ^ true