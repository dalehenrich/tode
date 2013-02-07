as yet unclassified
rawReferencesTo: aVariableOrClassName isMeta: isMeta in: aClassOrNil
  | aCollection env ref symbol special byte literal |
  aCollection := OrderedCollection new.
  env := aClassOrNil ifNil: [ Smalltalk globals ].
  env isBehavior
    ifTrue: [ 
      "instance vars and class instance vars"
      isMeta
        ifTrue: [ env := env class ].
      (env allInstVarNames includes: aVariableOrClassName asSymbol)
        ifTrue: [ 
          env
            withAllSubAndSuperclassesDo: [ :cl | 
              (cl whichSelectorsAccess: aVariableOrClassName)
                do: [ :sel | aCollection add: (MethodReference class: cl selector: sel) ] ].
          ^ aCollection ].
      literal := (env withAllSuperclasses gather: [ :ea | ea classPool associations ])
        detect: [ :ea | ea key = aVariableOrClassName asSymbol ]
        ifNone: [  ].
      literal
        ifNotNil: [ 
          | classes |
          "class vars."
          classes := ClassSet new.
          classes addAll: env theNonMetaClass withAllSuperclasses.
          ((ClassOrganizer cachedOrganizer referencesTo: literal key in: classes) at: 1)
            do: [ :method | aCollection add: (MethodReference class: method inClass selector: method selector) ].
          ^ aCollection ] ].	"globals"
  (ClassOrganizer cachedOrganizer referencesToObject: (Smalltalk at: aVariableOrClassName asSymbol))
    do: [ :method | aCollection add: (MethodReference class: method inClass selector: method selector) ].
  ^ aCollection