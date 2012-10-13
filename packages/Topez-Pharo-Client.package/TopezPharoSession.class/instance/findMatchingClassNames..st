as yet unclassified
findMatchingClassNames: aString
    | regex classList |
    regex := RxParser preferredMatcherClass for: (RxParser new parse: aString) ignoreCase: true.
    ^ (SystemNavigation default allClassesAndTraits select: [ :cls | regex search: cls name ])
        collect: [ :each | each name asString ]