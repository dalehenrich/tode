styling
shoutAboutToStyle: aPluggableShoutMorphOrView
    classOrMetaClass
        ifNotNil: [ 
            "aPluggableShoutMorphOrView classOrMetaClass: self classOrMetaClass asBehavior."
            aPluggableShoutMorphOrView styler environment: self ].
    ^ self stylingActive