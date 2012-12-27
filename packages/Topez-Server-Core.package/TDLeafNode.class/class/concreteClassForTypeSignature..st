as yet unclassified
concreteClassForTypeSignature: typeSignature
    ^ (self allSubclasses select: [ :cl | cl theMetaClass selectors includes: #'typeSignature' ])
        detect: [ :cl | cl typeSignature = typeSignature ]