accessing
onUpgrade
  "#'useLoaded' #'useIncoming' #'pass'"

  onUpgrade ifNil: [ onUpgrade := #'pass' ].
  ^ onUpgrade