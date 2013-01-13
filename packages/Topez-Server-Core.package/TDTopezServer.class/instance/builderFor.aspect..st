accessing
builderFor: anObject aspect: anAspect
  | builderClass |
  builderClass := self builderClassFor: anObject aspect: anAspect.
  ^ builderClass new
    object: anObject;
    yourself