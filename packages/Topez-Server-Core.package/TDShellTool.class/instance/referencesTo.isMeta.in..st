as yet unclassified
referencesTo: aVariableOrClassName isMeta: isMeta in: aClassOrNil
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
                do: [ :sel | 
                  aCollection
                    add:
                      (self messageElementFor: cl selector: sel messagePattern: aVariableOrClassName) ] ].
          ^ TZMessageElement hierarchyOrderFor: aCollection ].
      literal := (env withAllSuperclasses
        gather: [ :ea | ea classPool associations ])
        detect: [ :ea | ea key = aVariableOrClassName asSymbol ]
        ifNone: [  ].
      literal
        ifNotNil: [ 
          | classes |
          "class vars."
          classes := ClassSet new.
          classes addAll: env theNonMetaClass withAllSuperclasses.
          ((Smalltalk classOrganizer referencesTo: literal key in: classes)
            at: 1)
            do: [ :method | 
              aCollection
                add:
                  (self
                    messageElementFor: method inClass
                    selector: method selector
                    messagePattern: aVariableOrClassName) ].
          ^ TZMessageElement hierarchyOrderFor: aCollection ] ].	"globals"
  (Smalltalk classOrganizer
    referencesToObject: (Smalltalk at: aVariableOrClassName asSymbol))
    do: [ :method | 
      aCollection
        add:
          (self
            messageElementFor: method inClass
            selector: method selector
            messagePattern: aVariableOrClassName) ].
  ^ TZMessageElement hierarchyOrderFor: aCollection