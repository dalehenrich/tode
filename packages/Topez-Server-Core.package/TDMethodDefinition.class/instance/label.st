as yet unclassified
label
  ^ self isMeta
    ifTrue: [ self className , ' class>>' , self selector ]
    ifFalse: [ self className , '>>' , self selector ]