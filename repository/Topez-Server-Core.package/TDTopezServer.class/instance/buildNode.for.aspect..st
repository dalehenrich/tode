accessing
buildNode: parentNode for: anObject aspect: anAspect
  self
    builderFor: anObject
    aspect: anAspect
    do: [ :builder :finalAspect | ^ builder buildNode: parentNode topez: self aspect: finalAspect ]