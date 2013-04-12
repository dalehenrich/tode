accessing
builderAspect
  builderAspect ifNil: [ builderAspect := #'view' ].
  ^ builderAspect