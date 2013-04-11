as yet unclassified
builderAspect: anAspect
  anAspect == #'edit'
    ifTrue: [ self halt ].
  builderAspect := anAspect