as yet unclassified
rawReferencesTo: aVariableOrClassName isMeta: isMeta in: aClassOrNil
  | aCollection env ref symbol special byte literal classSet |
  aCollection := OrderedCollection new.
  env := aClassOrNil ifNil: [ Smalltalk globals ].
  env isBehavior
    ifTrue: [ 
      | variable |
      "instance vars and class instance vars"
      isMeta
        ifTrue: [ env := env class ].
      variable := aVariableOrClassName asSymbol.
      (env allInstVarNames includes: variable)
        ifTrue: [ 
          env
            withAllSubAndSuperclassesDo: [ :cl | 
              (cl whichSelectorsAccess: variable)
                do: [ :sel | aCollection add: (MethodReference class: cl selector: sel) ] ].
          ^ aCollection ].
      (env isMeta not and: [ env class allInstVarNames includes: variable ])
        ifTrue: [ 
          env
            withAllSubAndSuperclassesDo: [ :cl | 
              (cl class whichSelectorsAccess: variable)
                do: [ :sel | aCollection add: (MethodReference class: cl class selector: sel) ] ].
          ^ aCollection ].
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
                  (MethodReference class: method inClass selector: method selector) ].
          ^ aCollection ].
      classSet := ClassSet with: env ].
  (Smalltalk at: aVariableOrClassName asSymbol)
    ifNotNil: [ :aGlobal | 
      | ans |
      classSet
        ifNil: [ ans := Smalltalk classOrganizer referencesToObject: aGlobal ]
        ifNotNil: [ ans := Smalltalk classOrganizer referencesToObject: aGlobal in: classSet ].
      ans
        do: [ :method | 
          aCollection
            add:
              (MethodReference class: method inClass selector: method selector) ] ].
  ^ aCollection