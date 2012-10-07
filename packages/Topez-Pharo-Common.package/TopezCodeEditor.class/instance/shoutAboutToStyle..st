styling
shoutAboutToStyle: aPluggableShoutMorphOrView
    classOrMetaClass ifNotNil: [ aPluggableShoutMorphOrView classOrMetaClass: self classOrMetaClass asBehavior ].
    ^ self stylingActive