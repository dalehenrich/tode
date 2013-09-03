accessing
buildSessionNode: parentNode for: anObject aspect: anAspect
  self
    builderFor: anObject
    aspect: anAspect
    do: [ :builder :finalAspect | ^ builder buildSessionNode: parentNode topez: self aspect: finalAspect ]