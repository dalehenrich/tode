accessing
acceptContents: aStringOrText notifying: aController
  "Set aString to be the contents of the receiver.  Return true cuz happy"

  self clientElement source: aStringOrText.
  ^ true