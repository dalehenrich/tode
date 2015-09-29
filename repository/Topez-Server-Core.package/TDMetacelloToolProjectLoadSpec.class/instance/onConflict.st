accessing
onConflict
  "#'useLoaded' #'useIncoming' #'pass'"

  onConflict ifNil: [ onConflict := #'useIncoming' ].
  ^ onConflict