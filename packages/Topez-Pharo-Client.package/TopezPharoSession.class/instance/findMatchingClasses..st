as yet unclassified
findMatchingClasses: aString
    | regex classList |
    regex := RxParser preferredMatcherClass for: (RxParser new parse: aString) ignoreCase: true.
    ^ TZClassElement
        hierarchyForClasses: (SystemNavigation default allClassesAndTraits select: [ :cls | regex search: cls name ])