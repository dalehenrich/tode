as yet unclassified
concreteClassForTypeSignature: typeSignature
  ^ (TDLeafNode allSubclasses , TDGatewayNode allSubclasses
    select: [ :cl | cl theMetaClass selectors includes: #'typeSignature' ])
    detect: [ :cl | cl typeSignature = typeSignature ]