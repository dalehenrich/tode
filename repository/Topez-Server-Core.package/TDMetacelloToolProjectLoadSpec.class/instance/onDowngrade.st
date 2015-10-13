accessing
onDowngrade
  "#'useLoaded' #'useIncoming' #'pass'"

  onDowngrade ifNil: [ onDowngrade := #'pass' ].
  ^ onDowngrade