accessing
onLock
  "#'honor' #'break' #'pass'"

  onLock ifNil: [ onLock := #'honor' ].
  ^ onLock