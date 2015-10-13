as yet unclassified
label
  ^ self isMeta
    ifTrue: [ self theClassLabel , ' class>>' , self selector ]
    ifFalse: [ self theClassLabel , '>>' , self selector ]