accessing
builderFor: anObject aspect: anAspect
  | builderClass |
  builderClass := self builderClassFor: anObject aspect: anAspect.
  ^ (Smalltalk at: builderClass asSymbol) new
    object: anObject;
    yourself